#!/bin/bash
# Stop immediately if any executed command has exit status different from 0.
set -ex

usage() {
    echo "Usage: analyze.sh" 1>&2
}

if [ $# -ne 0 ]
then
    usage
    exit 1
fi

# NEEDED: set the variable for the absolute directory of this script.
HERE=$(
cd "$(dirname "$0")"
echo "${PWD}"
)

TOP="${PWD}"

# Absolute path of the ECLAIR bin directory.
ECLAIR_BIN_DIR="/opt/bugseng/eclair/bin"

# Directory where this script resides: usually in a directory named "ECLAIR".
SCRIPT_DIR="$(cd "$(dirname "$0")" ; echo "${PWD}")"

SDK_PATH=/opt/zephyr-sdk-0.16.3

export CC_ALIASES=""
export CXX_ALIASES=""
export LD_ALIASES=""
export AR_ALIASES=""
export AS_ALIASES=""
export FILEMANIP_ALIASES="cp mv"

for CROSS in \
      aarch64-zephyr-elf/bin/aarch64-zephyr-elf- \
      arc64-zephyr-elf/bin/arc64-zephyr-elf- \
      arc-zephyr-elf/bin/arc-zephyr-elf- \
      arm-zephyr-eabi/bin/arm-zephyr-eabi- \
      mips-zephyr-elf/bin/mips-zephyr-elf- \
      nios2-zephyr-elf/bin/nios2-zephyr-elf- \
      riscv64-zephyr-elf/bin/riscv64-zephyr-elf- \
      sparc-zephyr-elf/bin/sparc-zephyr-elf- \
      x86_64-zephyr-elf/bin/x86_64-zephyr-elf- \
      xtensa/intel_apl_adsp/xtensa-zephyr-elf/bin/xtensa-zephyr-elf- \
      xtensa/intel_bdw_adsp/xtensa-zephyr-elf/bin/xtensa-zephyr-elf- \
      xtensa/intel_byt_adsp/xtensa-zephyr-elf/bin/xtensa-zephyr-elf- \
      xtensa/intel_s1000/xtensa-zephyr-elf/bin/xtensa-zephyr-elf- \
      xtensa/nxp_imx8m_adsp/xtensa-zephyr-elf/bin/xtensa-zephyr-elf- \
      xtensa/nxp_imx_adsp/xtensa-zephyr-elf/bin/xtensa-zephyr-elf- \
      xtensa/sample_controller/xtensa-zephyr-elf/bin/xtensa-zephyr-elf-
do
  base="${SDK_PATH}/${CROSS}"
  CC_ALIASES="${CC_ALIASES} ${base}gcc"
  CXX_ALIASES="${CXX_ALIASES} ${base}g++"
  AS_ALIASES="${AS_ALIASES} ${base}as"
  LD_ALIASES="${LD_ALIASES} ${base}ld"
  AS_ALIASES="${AS_ALIASES} ${base}as"
  AR_ALIASES="${AR_ALIASES} ${base}ar"
  FILEMANIP_ALIASES="${FILEMANIP_ALIASES} ${base}objcopy"
done

# ECLAIR binary data directory and workspace.
export ECLAIR_DATA_DIR="${ECLAIR_OUTPUT_DIR}/.data"
# ECLAIR workspace.
export ECLAIR_WORKSPACE="${ECLAIR_DATA_DIR}/eclair_workspace"
# Destination file for the ECLAIR diagnostics.
export ECLAIR_DIAGNOSTICS_OUTPUT="${ECLAIR_OUTPUT_DIR}/DIAGNOSTICS.txt"

# Identifies the particular build of the project.
export ECLAIR_PROJECT_NAME="Zephyr"
# All paths mentioned in ECLAIR reports that are below this directory
# will be presented as relative to ECLAIR_PROJECT_ROOT.
export ECLAIR_PROJECT_ROOT="${TOP}"

# Erase and recreate the output directory and the data directory.
rm -rf "${ECLAIR_OUTPUT_DIR}"
mkdir -p "${ECLAIR_DATA_DIR}"

(
  # 1. Install west, and make sure ~/.local/bin is on your PATH environment
  # variable:
  export PATH=~/.local/bin:"$PATH"
  pip3 install --user -U west

  # 2. Get the Zephyr source code:
  [ -d "${TOP}/.west" ] || west init -l "${TOP}"
  cd "${TOP}"
  west update

  # 3. Export a Zephyr CMake package. This allows CMake to automatically
  # load boilerplate code required for building Zephyr applications.
  west zephyr-export

  # Zephyr's scripts/requirements.txt file declares additional Python
  # dependencies. Install them with pip3.
  pip3 install --user -r "${TOP}/scripts/requirements.txt"

  "${HERE}/build.sh"

  # Perform the build (from scratch) in an ECLAIR environment.
  "${ECLAIR_BIN_DIR}/eclair_env"                   \
      "-eval_file='${SCRIPT_DIR}/ECLAIR/analysis.ecl'" \
      -- "${HERE}/build.sh"
)

# Create the project database.
PROJECT_ECD="${ECLAIR_OUTPUT_DIR}/PROJECT.ecd"
find "${ECLAIR_DATA_DIR}" -maxdepth 1 -name "FRAME.*.ecb" \
    | sort | xargs cat \
    | "${ECLAIR_BIN_DIR}/eclair_report" \
          "-create_db='${PROJECT_ECD}'" \
          -load=/dev/stdin

# Create the Jenkins reports file.
"${ECLAIR_BIN_DIR}/eclair_report" \
    "-db='${PROJECT_ECD}'" \
    "-eval_file='${SCRIPT_DIR}/ECLAIR/report.ecl'"
