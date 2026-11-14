@echo off
rem Builds rnnoise.dll (RNNoise v0.2, BSD-3-Clause) for Windows x64 with MSVC.
rem Run from an "x64 Native Tools Command Prompt". Input: the extracted rnnoise-0.2 folder.
rem Usage: build-windows.cmd C:\path\to\rnnoise-0.2 C:\path\to\output\rnnoise.dll
set SRC=%~1\src
rem MSVC does not define __SSE2__ on x64 (every x64 CPU has it); without it v0.2 falls back to code needing a missing header.
cl /nologo /O2 /LD /MT /DWIN32 /DRNNOISE_BUILD /DDLL_EXPORT /D__SSE2__ /I"%~1\include" /I"%SRC%" ^
  "%SRC%\denoise.c" "%SRC%\celt_lpc.c" "%SRC%\kiss_fft.c" "%SRC%\nnet.c" "%SRC%\nnet_default.c" "%SRC%\parse_lpcnet_weights.c" ^
  "%SRC%\pitch.c" "%SRC%\rnn.c" "%SRC%\rnnoise_data.c" "%SRC%\rnnoise_tables.c" /Fe"%~2"
