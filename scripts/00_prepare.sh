#!/usr/bin/env bash

set -euo pipefail

echo "[prepare] Cleaning workspace"

rm -rf "$WORK"

mkdir -p \
    "$ROOTFS" \
    "$ROOT/work/packages" \
    "$ROOT/output"

echo "[prepare] Done"
