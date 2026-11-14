# Dongle driver setup (`wdi-simple.exe`)

The app's **🔧 Set up dongle** button uses `wdi-simple.exe`, the command-line example of
[libwdi](https://github.com/pbatard/libwdi), the engine inside [Zadig](https://zadig.akeo.ie/). It installs the
**WinUSB** driver for an RTL2832U dongle (USB `0BDA:2838` or `0BDA:2832`), exactly like Zadig's "Replace Driver".

It is embedded in the app and runs only when you press the button. Windows asks for permission first (UAC).

## Licenses
- libwdi and wdi-simple: **LGPL-3.0**, © Pete Batard. Source: https://github.com/pbatard/libwdi
- Embedded Microsoft WinUSB / WDF co-installers: Microsoft **WDK 8.0 redistributable components**
  (`wdfcoinstaller.msi`, https://go.microsoft.com/fwlink/p/?LinkID=253170), redistributable under the WDK license.

## How this file was built
- libwdi commit `30df0c0e051b0132c4b9ebed8c054bc8eb3aaaec`, with `libwdi-build.patch` applied:
  WinUSB only (no libusb0/libusbK), x64 only (no x86/ARM64 helper), and `WDK_DIR` pointing at the
  extracted WDK redistributable (`msiexec /a wdfcoinstaller.msi /qn TARGETDIR=C:\wdk-redist`).
- Visual Studio 2026 Build Tools (MSVC v145), Windows SDK 10.0.26100:
  ```
  MSBuild libwdi.sln -t:examples\wdi-simple -p:Configuration=Release -p:Platform=x64 -p:PlatformToolset=v145 -p:WindowsTargetPlatformVersion=10.0.26100.0
  ```
  Run it from a shell without `NoDefaultCurrentDirectoryInExePath` set (the build runs `embedder.exe` from the current folder).
- SHA-256 of `wdi-simple.exe`: `b58a6ecb2968192020f9734aba55297975cd24813280691e4a06a555bdac41fd`

## What the app runs
```
wdi-simple.exe -n "RTL2832U SDR" -m "Realtek" -v 0x0BDA -p 0x2838 [-i 0] -t 0 -b <window>
```
`-i 0` is added when Windows shows the dongle as a composite device (interface 0 is the radio).
