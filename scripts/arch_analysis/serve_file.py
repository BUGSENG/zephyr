#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0
#
"""Local web app server for architectural dependency visualization.

Serves the web app static files and delivers a pre-generated architecture
JSON file to the frontend via the /api/data endpoint.
"""

import argparse
import json
import os
import sys
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer

WEBAPP_DIR = os.path.join(os.path.dirname(os.path.abspath(__file__)), "webapp")


class Handler(BaseHTTPRequestHandler):
    json_path = None

    def log_message(self, *args):  # Quieter console logs
        pass

    def _send(self, code, body, ctype):
        if isinstance(body, str):
            body = body.encode("utf-8")
        self.send_response(code)
        self.send_header("Content-Type", ctype)
        self.send_header("Content-Length", str(len(body)))
        self.end_headers()
        self.wfile.write(body)

    def do_GET(self):
        path = self.path.split("?", 1)[0]

        if path in ("/", "/index.html"):
            index_file = os.path.join(WEBAPP_DIR, "index.html")
            if not os.path.exists(index_file):
                self._send(404, "webapp/index.html not found", "text/plain")
                return
            with open(index_file, "r", encoding="utf-8") as fh:
                self._send(200, fh.read(), "text/html; charset=utf-8")

        elif path == "/api/data":
            try:
                with open(self.json_path, "r", encoding="utf-8") as fh:
                    data = json.load(fh)
                    self._send(200, json.dumps(data), "application/json")
            except Exception as exc:
                self._send(500, json.dumps({"error": str(exc)}), "application/json")

        else:
            self._send(404, "not found", "text/plain")


def main():
    ap = argparse.ArgumentParser(description=__doc__,
                                 formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--json", required=True, help="Path to pre-generated architecture JSON file")
    ap.add_argument("--port", type=int, default=8080)
    ap.add_argument("--host", default="127.0.0.1")
    args = ap.parse_args()

    if not os.path.isfile(args.json):
        sys.exit(f"error: JSON file not found at '{args.json}'")

    Handler.json_path = os.path.abspath(args.json)

    srv = ThreadingHTTPServer((args.host, args.port), Handler)
    print(f"Architecture web app running on http://{args.host}:{args.port}")
    print(f"  Data source: {Handler.json_path}")

    try:
        srv.serve_forever()
    except KeyboardInterrupt:
        print("\nServer stopped.")


if __name__ == "__main__":
    main()