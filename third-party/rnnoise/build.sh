#!/usr/bin/env bash
# Builds librnnoise (RNNoise v0.2, BSD-3-Clause, https://github.com/xiph/rnnoise) for Linux or macOS.
# Usage: native/rnnoise/build.sh <output file> [extra compiler flags, e.g. "-arch x86_64"]
set -euo pipefail
OUT="$1"; shift || true
URL=https://github.com/xiph/rnnoise/releases/download/v0.2/rnnoise-0.2.tar.gz
SHA=90fce4b00b9ff24c08dbfe31b82ffd43bae383d85c5535676d28b0a2b11c0d37
WORK=$(mktemp -d)
curl -sSL -o "$WORK/rnnoise.tar.gz" "$URL"
echo "$SHA  $WORK/rnnoise.tar.gz" | shasum -a 256 -c -
tar -C "$WORK" -xzf "$WORK/rnnoise.tar.gz"
S="$WORK/rnnoise-0.2/src"
# The v0.2 release tarball is missing os_support.h, which the generic and ARM NEON code
# include (x86 builds don't). It only needs these standard helpers from the Opus codebase.
cat > "$S/os_support.h" <<'H'
#ifndef OS_SUPPORT_H
#define OS_SUPPORT_H
#include <string.h>
#include <stdlib.h>
#ifndef OPUS_INLINE
#define OPUS_INLINE inline
#endif
#define OPUS_COPY(dst, src, n) (memcpy((dst), (src), (n)*sizeof(*(dst)) + 0*((dst)-(src))))
#define OPUS_MOVE(dst, src, n) (memmove((dst), (src), (n)*sizeof(*(dst)) + 0*((dst)-(src))))
#define OPUS_CLEAR(dst, n) (memset((dst), 0, (n)*sizeof(*(dst))))
#endif
H
cc -O2 -fPIC -shared -DRNNOISE_BUILD -fvisibility=hidden "$@" -I"$WORK/rnnoise-0.2/include" -I"$S" \
  "$S/denoise.c" "$S/celt_lpc.c" "$S/kiss_fft.c" "$S/nnet.c" "$S/nnet_default.c" "$S/parse_lpcnet_weights.c" \
  "$S/pitch.c" "$S/rnn.c" "$S/rnnoise_data.c" "$S/rnnoise_tables.c" -lm -o "$OUT"
echo "built $OUT"
