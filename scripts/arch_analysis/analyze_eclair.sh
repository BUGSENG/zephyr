#!/usr/bin/env bash

set -eu

usage() {
    echo "Usage: $0 <BOARD> <SAMPLE> <THREADS>"
}

if [ $# -ne 3 ]
then
  usage
  exit 1
fi

BOARD=$1
SAMPLE=$2
THREADS=$3


FULL_JSON_OUTPUT="../../build/sca/eclair/report_full_json"
# Generate output in build/sca/eclair/report_full_json
(
    cd ../..
    rm -fr build
    export ECLS_DIR="${PWD}/cmake/sca/eclair/ECL/arch_constraints"
    west build -b "${BOARD}" "${SAMPLE}" -p always "-o=-j${THREADS}" -- \
        -DZEPHYR_SCA_VARIANT=eclair \
        -DECLAIR_FULL_JSON=ON \
        -DECLAIR_RULESET_USER=ON \
        -DECLAIR_USER_RULESET_NAME=arch_constraints \
        -DECLAIR_RULESET_FIRST_ANALYSIS=OFF \
	-DECLAIR_FULL_TXT_FIRST_AREA=OFF \
        -DECLAIR_USER_RULESET_PATH="${PWD}/cmake/sca/eclair/ECL"
)

python3 generate_json.py \
  -i "${FULL_JSON_OUTPUT}/by_service/B.INDEPENDENCE.json" \
  -e "${FULL_JSON_OUTPUT}/by_service/B.EXPLAIN.json" \
  -s zephyr_scope.yaml \
  -j architecture_data.json

python3 serve_file.py --json architecture_data.json
