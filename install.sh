#!/bin/sh
set -o errexit
set -o pipefail
set -o nounset

TMPDIR=$(mktemp -d)
trap 'echo Signal caught, cleaning up >&2; cd /; /bin/rm -rf "$TMPDIR"; exit 15' 1 2 3 15

BIN=$TMPDIR/mtg.bin
cp -rf ./mtg.bin $TMPDIR/mtg.bin
bash $BIN
rm -rf $TMPDIR
