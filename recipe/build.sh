#!/bin/bash
set -ex

$PYTHON -m pip install . -vv --no-build-isolation --no-deps \
    -Cbuilddir=builddir \
    -Csetup-args=${MESON_ARGS// / -Csetup-args=} \
    || (cat builddir/meson-logs/meson-log.txt && exit 1)
