#!/bin/bash
#
# Downloads the Nerd Fonts used by these dotfiles into fonts/fonts.symlink/,
# which setup.sh symlinks to ~/.fonts. Fonts are NOT committed to the repo
# (see .gitignore) — they are fetched from upstream releases instead.
#
# Requires: curl, unzip. Re-run any time; existing fonts are overwritten.

set -euo pipefail

# Bump this to pick up newer font releases.
NERD_FONTS_VERSION="v3.4.0"

# Nerd Fonts release zips to install (asset names from the release page).
FONTS=(
  "Go-Mono"
  "UbuntuMono"
  "Ubuntu"
)

FONT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/fonts.symlink"
BASE_URL="https://github.com/ryanoasis/nerd-fonts/releases/download/${NERD_FONTS_VERSION}"

mkdir -p "$FONT_DIR"
tmp="$(mktemp -d)"
trap 'rm -rf "$tmp"' EXIT

for font in "${FONTS[@]}"; do
  echo "Downloading ${font} (${NERD_FONTS_VERSION})..."
  curl -fsSL -o "$tmp/${font}.zip" "${BASE_URL}/${font}.zip"
  unzip -o -q "$tmp/${font}.zip" -d "$tmp/${font}"
  # Install the .ttf variants only (skip READMEs, licenses, etc.).
  find "$tmp/${font}" -name '*.ttf' -exec cp -f {} "$FONT_DIR/" \;
done

echo "Installed fonts to $FONT_DIR"

# Refresh the font cache on Linux if available.
if command -v fc-cache >/dev/null 2>&1; then
  fc-cache -f "$FONT_DIR" >/dev/null 2>&1 || true
  echo "Font cache refreshed."
fi
