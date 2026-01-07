#!/usr/bin/env bash
set -e

TARGET="$HOME/.bashrc"

echo "[+] Backing up existing .bashrc"
[ -f "$TARGET" ] && cp "$TARGET" "$TARGET.bak.$(date +%s)"

echo "[+] Installing custom bashrc"
curl -fsSL https://raw.githubusercontent.com/<USERNAME>/<REPO>/main/bashrc >> "$TARGET"

echo "[+] Reloading bashrc"
source "$TARGET"

echo "[✓] Done"
