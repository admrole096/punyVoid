#!/usr/bin/env bash

set -euo pipefail

echo "[bootstrap] Creating Void rootfs"

REPO="https://repo-default.voidlinux.org/current"

mkdir -p "$ROOTFS"

echo "[bootstrap] Installing base packages"

xbps-install \
    -Sy \
    -R "$REPO" \
    -r "$ROOTFS" \
    -S \
    -y \
    $(grep -v '^#' "$ROOT/packages/base.list")

echo "[bootstrap] Base system installed"
