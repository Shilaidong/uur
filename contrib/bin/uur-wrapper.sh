#!/usr/bin/env bash
# Rootless wrapper for uur used on our Ubuntu 26.04 / GNOME Wayland box.
# Prepend the portable Wine build so the bridge finds wine/wineboot/wineserver
# on PATH, then run the real uur binary from the portable release.
#
# Layout assumed:
#   $HOME/.local/opt/uur   - uur portable release (tar.zst, usr/ subtree)
#   $HOME/.local/opt/wine  - portable Wine (Kron4ek WoW64 build)
export PATH="$HOME/.local/opt/wine/bin:$PATH"
exec "$HOME/.local/opt/uur/usr/bin/uur" "$@"
