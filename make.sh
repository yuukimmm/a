#!/bin/bash

set -eu

DEST=build
REPO=https://codeberg.org/mofusky/homepage.git
COMMIT=73785b4613902d597944f7a8f87f7edf6bd58252

if [ -d "$DEST" ]; then
  rm -rf "$DEST"
fi
git clone -n "$REPO" "$DEST"
(
  cd "$DEST"
  git checkout "$COMMIT"
  rm -rf .git
)
