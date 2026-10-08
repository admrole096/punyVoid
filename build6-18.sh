#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"

export ROOT
export WORK="$ROOT/work"
export ROOTFS="$WORK/rootfs"

echo "== punyVoid Linux Builder =="
echo

for script in \
    00_prepare.sh \
    10_bootstrap.sh \
    20_packages.sh \
    30_overlay.sh \
    40_configure.sh \
    50_init.sh \
    60_squashfs.sh \
    70_iso.sh
do
    echo "== Running $script =="

    source "$ROOT/scripts/$script"

    echo
done

echo "== Build complete =="
