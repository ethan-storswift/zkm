#!/bin/bash
FEAT=
if [ X"$#" != X"0" ]; then
  export USE_GPU_PROVE=1
  FEAT='--features gpu,cuda'
fi
echo "$FEAT"

BASEDIR=test-vectors RUST_LOG=info BLOCK_NO=13284491 SEG_FILE="/tmp/output/0" SEG_SIZE=262144 \
   cargo run $FEAT --release --example zkmips prove
