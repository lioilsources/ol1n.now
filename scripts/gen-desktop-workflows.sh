#!/usr/bin/env bash
# Generate release-{macos,windows,linux}.yml GitHub Actions workflows for a
# Flutter app, mirroring the PoetryStream template. Builds debug desktop bundles
# on tag push (v*) and uploads them to the GitHub Release.
#
# Usage:
#   gen-desktop-workflows.sh <repo-dir> <flutter-root-rel> <pkg-name> <artifact-name>
#
#   repo-dir        path to the app repo (workflows go in <repo-dir>/.github/workflows)
#   flutter-root-rel  flutter project dir relative to repo root ('.' or e.g. 'mirrorbooth')
#   pkg-name        Flutter project_name = built .app / bundle name (e.g. swype_kids)
#   artifact-name   release artifact prefix (e.g. SwypeKids)
#
# Example:
#   scripts/gen-desktop-workflows.sh ../SwypeKids . swype_kids SwypeKids
set -eu

REPO="$1"; WD="$2"; PKG="$3"; ART="$4"
FLUTTER_VERSION="3.41.x"
OUT="$REPO/.github/workflows"
mkdir -p "$OUT"

# windows path form of the flutter root (backslashes)
WDWIN="$(printf '%s' "$WD" | sed 's#/#\\#g')"

cat > "$OUT/release-macos.yml" <<YML
name: Release macOS

on:
  push:
    tags:
      - 'v*'

permissions:
  contents: write

jobs:
  build-macos:
    name: Build & Release macOS
    runs-on: macos-15
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Set up Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: '${FLUTTER_VERSION}'
          channel: stable
          cache: true

      - name: Install dependencies
        working-directory: ${WD}
        run: flutter pub get

      - name: Build macOS (debug)
        working-directory: ${WD}
        run: flutter build macos --debug

      - name: Package as ZIP
        run: |
          cd "${WD}/build/macos/Build/Products/Debug"
          zip -r "\$OLDPWD/${ART}-\${{ github.ref_name }}-macOS.zip" "${PKG}.app"

      - name: Upload to GitHub Release
        uses: softprops/action-gh-release@v2
        with:
          files: ${ART}-\${{ github.ref_name }}-macOS.zip
          name: ${ART} \${{ github.ref_name }}
          tag_name: \${{ github.ref_name }}
          draft: false
          prerelease: true
YML

cat > "$OUT/release-windows.yml" <<YML
name: Release Windows

on:
  push:
    tags:
      - 'v*'

permissions:
  contents: write

jobs:
  build-windows:
    name: Build & Release Windows
    runs-on: windows-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Set up Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: '${FLUTTER_VERSION}'
          channel: stable
          cache: true

      - name: Enable Windows desktop
        run: flutter config --enable-windows-desktop

      - name: Install dependencies
        working-directory: ${WD}
        run: flutter pub get

      - name: Build Windows (release)
        working-directory: ${WD}
        run: flutter build windows --release

      - name: Package as ZIP
        shell: pwsh
        run: |
          \$src = "${WDWIN}\build\windows\x64\runner\Release"
          \$dest = "${ART}-\${{ github.ref_name }}-Windows.zip"
          Compress-Archive -Path "\$src\*" -DestinationPath \$dest

      - name: Upload to GitHub Release
        uses: softprops/action-gh-release@v2
        with:
          files: ${ART}-\${{ github.ref_name }}-Windows.zip
          name: ${ART} \${{ github.ref_name }}
          tag_name: \${{ github.ref_name }}
          draft: false
          prerelease: true
YML

cat > "$OUT/release-linux.yml" <<YML
name: Release Linux

on:
  push:
    tags:
      - 'v*'

permissions:
  contents: write

jobs:
  build-linux:
    name: Build & Release Linux
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Install Linux dependencies
        run: |
          sudo apt-get update -y
          sudo apt-get install -y \\
            clang cmake ninja-build pkg-config \\
            libgtk-3-dev liblzma-dev libstdc++-12-dev

      - name: Set up Flutter
        uses: subosito/flutter-action@v2
        with:
          flutter-version: '${FLUTTER_VERSION}'
          channel: stable
          cache: true

      - name: Enable Linux desktop
        run: flutter config --enable-linux-desktop

      - name: Install dependencies
        working-directory: ${WD}
        run: flutter pub get

      - name: Build Linux (debug)
        working-directory: ${WD}
        run: flutter build linux --debug

      - name: Package as tar.gz
        run: |
          tar -czf "${ART}-\${{ github.ref_name }}-Linux.tar.gz" \\
            -C ${WD}/build/linux/x64/debug/bundle .

      - name: Upload to GitHub Release
        uses: softprops/action-gh-release@v2
        with:
          files: ${ART}-\${{ github.ref_name }}-Linux.tar.gz
          name: ${ART} \${{ github.ref_name }}
          tag_name: \${{ github.ref_name }}
          draft: false
          prerelease: true
YML

echo "Wrote desktop workflows -> $OUT/ (macos, windows, linux) for ${ART}"
