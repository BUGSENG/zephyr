#!/usr/bin/env python3

import argparse
import csv
import json
import re
from collections import defaultdict

DEFAULT_INDEPENDENCE_FILE = "full_json/by_service/B.INDEPENDENCE.json"
DEFAULT_EXPLAIN_FILE = "full_json/by_service/B.EXPLAIN.json"
DEFAULT_SCOPE_FILE = "zephyr_scope.yaml"
DEFAULT_OUTPUT_JSON = "architecture_data.json"
DEFAULT_OUTPUT_CSV = "aggregated_violations.csv"

VALID_TYPES = ["call", "read", "write"]


def normalize_node_name(name: str) -> str:
    """Strips trailing _FILES suffix to normalize node names across JSON files."""
    if not name:
        return ""
    if name.endswith("_FILES"):
        return name[:-6]
    return name


def extract_component(message: str) -> str:
    """Extracts component name enclosed in backticks from violation messages."""
    match = re.search(r"component `([^']+)'", message)
    if match:
        raw_name = match.group(1)
        return normalize_node_name(raw_name)
    return ""


def classify_action(message: str, areas: list):
    """Classifies architectural actions into call, write, or read types."""
    if "include for" in message:
        return "include", areas[0]["message"], areas[1]["message"]
    if "call action" in message:
        return "call", areas[2]["message"], areas[1]["message"]
    if "write action" in message:
        return "write", areas[2]["message"], areas[1]["message"]
    if "read action" in message:
        return "read", areas[2]["message"], areas[1]["message"]
    return None, None, None


def parse_explain_mappings(explain_filepath: str) -> dict:
    """Parses B.EXPLAIN.json to build a lookup dict of normalized_node -> list of file patterns."""
    node_mappings = defaultdict(list)

    try:
        with open(explain_filepath, "r") as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"Warning: {explain_filepath} not found. Nodes will have empty file lists.")
        return node_mappings
    except json.JSONDecodeError:
        print(f"Error: Failed to parse JSON from {explain_filepath}.")
        return node_mappings

    try:
        reports = data["tags1"][0]["reports"]
    except (KeyError, IndexError):
        print("Warning: B.EXPLAIN.json structure did not match expected format.")
        return node_mappings

    tag_regex = re.compile(
        r"Add tag `([^']+)' for a file whose canonical pathname matches the regex `([^']+)'"
    )

    for report in reports:
        for area in report.get("areas", []):
            msg = area.get("message", "")
            for line in msg.split("\n"):
                match = tag_regex.search(line)
                if match:
                    tag_name, file_pattern = match.groups()
                    normalized_tag = normalize_node_name(tag_name)
                    if file_pattern not in node_mappings[normalized_tag]:
                        node_mappings[normalized_tag].append(file_pattern)

    return node_mappings


def parse_scope_file(scope_filepath: str) -> list:
    """Parses the YAML scope file to extract in_scope components."""
    try:
        import yaml
        with open(scope_filepath, "r") as f:
            data = yaml.safe_load(f)
            if isinstance(data, dict) and "in_scope" in data:
                return data["in_scope"] or []
    except ImportError:
        print("Warning: PyYAML is not installed (`pip install pyyaml`). Attempting basic parsing fallback...")
        in_scope = []
        try:
            with open(scope_filepath, "r") as f:
                in_scope_block = False
                for line in f:
                    line = line.strip()
                    if line.startswith("in_scope:"):
                        in_scope_block = True
                        continue
                    if in_scope_block:
                        if line.startswith("- "):
                            in_scope.append(line[2:].strip().strip("'\""))
                        elif line and not line.startswith("#"):
                            break
            return in_scope
        except FileNotFoundError:
            pass
    except FileNotFoundError:
        print(f"Warning: Scope file {scope_filepath} not found.")
    except Exception as e:
        print(f"Warning: Failed to parse scope file {scope_filepath}: {e}")

    return []


def main():
    parser = argparse.ArgumentParser(
        description="Extract architectural violations from B.INDEPENDENCE and match file paths from B.EXPLAIN."
    )
    parser.add_argument(
        "-i",
        "--independence",
        default=DEFAULT_INDEPENDENCE_FILE,
        help="Path to B.INDEPENDENCE.json file",
    )
    parser.add_argument(
        "-e",
        "--explain",
        default=DEFAULT_EXPLAIN_FILE,
        help="Path to B.EXPLAIN.json file",
    )
    parser.add_argument(
        "-s",
        "--scope",
        default=DEFAULT_SCOPE_FILE,
        help="Path to YAML scope file (e.g. zephyr_scope.yaml)",
    )
    parser.add_argument(
        "-j",
        "--json-output",
        default=DEFAULT_OUTPUT_JSON,
        help="Path for unified JSON output",
    )
    parser.add_argument(
        "-c",
        "--csv-output",
        default=DEFAULT_OUTPUT_CSV,
        help="Path for CSV output",
    )
    args = parser.parse_args()

    try:
        with open(args.independence, "r") as f:
            indep_data = json.load(f)
    except FileNotFoundError:
        print(f"Error: File {args.independence} not found.")
        return
    except json.JSONDecodeError:
        print(f"Error: Failed to parse JSON from {args.independence}.")
        return

    try:
        reports = indep_data["tags1"][0]["reports"]
    except (KeyError, IndexError):
        print("Error: B.INDEPENDENCE.json structure does not match expected format.")
        return

    aggregated_data = defaultdict(lambda: defaultdict(lambda: defaultdict(int)))
    nodes_from_violations = set()

    for report in reports:
        if report.get("kind") != "violation":
            continue

        areas = report.get("areas", [])
        if len(areas) < 2:
            continue

        action_msg = areas[0].get("message", "")
        action_type, perp_msg, victim_msg = classify_action(action_msg, areas)

        if not action_type or action_type not in VALID_TYPES:
            continue

        perp = extract_component(perp_msg)
        victim = extract_component(victim_msg)

        if perp and victim:
            aggregated_data[perp][victim][action_type] += 1
            nodes_from_violations.add(perp)
            nodes_from_violations.add(victim)

    edges = []
    for source, targets in aggregated_data.items():
        for target, actions in targets.items():
            for action_type, count in actions.items():
                edges.append(
                    {
                        "from": source,
                        "to": target,
                        "action": action_type,
                        "count": count,
                    }
                )

    explain_file_map = parse_explain_mappings(args.explain)

    nodes_info = []
    for node_id in sorted(nodes_from_violations):
        files = explain_file_map.get(node_id, [])
        nodes_info.append(
            {
                "id": node_id,
                "files": files,
                "file_count": len(files),
                "roots": [node_id.lower()],
                "external": node_id == "EXTERNAL",
            }
        )

    initial_in_scope = parse_scope_file(args.scope)

    final_output = {
        "nodes": nodes_info,
        "edges": edges,
        "initial_in_scope": initial_in_scope,
        "meta": {
            "objects": len(nodes_info),
            "edges": len(edges),
        },
    }

    with open(args.json_output, "w") as jf:
        json.dump(final_output, jf, indent=2)
    print(f"Successfully generated architecture JSON: {args.json_output}")

    with open(args.csv_output, "w", newline="") as cf:
        writer = csv.DictWriter(
            cf, fieldnames=["from", "to", "action", "count"]
        )
        writer.writeheader()
        writer.writerows(edges)
    print(f"Successfully generated violations CSV: {args.csv_output}")


if __name__ == "__main__":
    main()