#!/bin/bash
# Stop immediately if any executed command has exit status different from 0.
set -ex

west -v build -p always -b up_squared ./tests/benchmarks/footprints/
west -v build -p always -b up_squared ./tests/benchmarks/footprints/ -- -DCONF_FILE=prj_userspace.conf
