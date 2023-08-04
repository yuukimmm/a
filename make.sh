#!/bin/bash

set -eu

DEST=build
REPO=https://codeberg.org/mofusky/homepage.git
COMMIT=e553a963d0c6a2cc9e323caf8090c62e4b50ffbd

if [ -d "$DEST" ]; then
  rm -rf "$DEST"
fi
git clone -n "$REPO" "$DEST"
(
  cd "$DEST"
  git checkout "$COMMIT"
  rm -rf .git
)
