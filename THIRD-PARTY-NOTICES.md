# Third-party components

The KG5ZZB Radio Apps include the following open-source components and data. Each remains
under its own license. Where a license requires source code to be available, it is linked here.

## Libraries shipped with the apps

| Component | Used for | License | Source |
|---|---|---|---|
| **webrtlsdr** (Google LLC and Jacobo Tarrio), ported to C# in the app | Airband Receiver from 0.8.0: the RTL-SDR driver (RTL2832U and R820T/R828D tuners). | Apache License 2.0 | https://github.com/jtarrio/webrtlsdr |
| **rtl-sdr** (osmocom): `rtl_tcp.exe`, `rtl_eeprom.exe`, `librtlsdr.dll` (the `rtl-sdr` folder) | Airband Receiver 0.7.0–0.7.4 only: talking to the RTL-SDR dongle. Official Windows build, unmodified; `rtl_tcp.exe` runs as a separate program and the app talks to it over a local network connection. (Up to 0.6.2: `rtlsdr.dll` shipped unmodified as a separate library.) | GNU GPL v2.0 or later | https://gitea.osmocom.org/sdr/rtl-sdr |
| **libusb**, `libusb-1.0.dll` | USB access for the receiver drivers. Shipped unmodified as a separate library. | GNU LGPL v2.1 | https://github.com/libusb/libusb |
| **libwinpthread** (mingw-w64), `libwinpthread-1.dll` | Threads for rtl-sdr (Airband Receiver 0.7.x) | MIT / ZPL | https://www.mingw-w64.org |
| **libairspy**, `airspy.dll` (Airband Receiver, `airspy` folder) | Airspy R2 / Mini receivers. Official build, unmodified. | BSD 3-Clause | https://github.com/airspy/airspyone_host |
| **pthreads-win32**, `pthreadVC2.dll` (Airband Receiver, `airspy` folder) | Threads for libairspy | GNU LGPL v2.1 | https://sourceware.org/pthreads-win32/ |
| **libwdi** | One-click USB driver setup (Windows) | GNU LGPL v3.0 | https://github.com/pbatard/libwdi |
| **RNNoise** (Xiph.Org) | Airband AI noise filter | BSD 3-Clause | https://github.com/xiph/rnnoise |
| **DeepFilterNet3** (H. Schröter et al.), streaming ONNX export by grazder | Shortwave "Voice only" filter | MIT / Apache-2.0 | https://github.com/Rikorose/DeepFilterNet, https://github.com/grazder/DeepFilterNet |
| **ONNX Runtime** (Microsoft) | Running the DeepFilterNet3 model | MIT | https://github.com/microsoft/onnxruntime |
| **NAudio** | Sound output on Windows | MIT | https://github.com/naudio/NAudio |
| **Avalonia** | User interface on Mac and Linux | MIT | https://github.com/AvaloniaUI/Avalonia |
| **Silk.NET** and **OpenAL Soft** | Sound output on Mac and Linux | MIT; OpenAL Soft: GNU LGPL v2.0 | https://github.com/dotnet/Silk.NET, https://github.com/kcat/openal-soft |
| **.NET runtime** (Microsoft) | Runs the apps | MIT | https://github.com/dotnet/runtime |

SDRplay receivers are used through the SDRplay API that the user installs from sdrplay.com;
nothing of SDRplay's is shipped with the apps.

For the GPL and LGPL components above, the complete corresponding source code is available
at the links given. On request, the author will also provide a copy of the exact source
versions used; contact through https://ko-fi.com/kg5zzb.

## Data built into the apps

| Data | License |
|---|---|
| **OurAirports** airports and frequencies | Public domain |
| **Natural Earth** map outlines | Public domain |
| **EiBi** worldwide shortwave schedule, by Eike Bierwirth (http://www.eibispace.de) | Free for use in third-party software |
| DRM broadcast schedule (drm.org); radiofax schedules published by NOAA, DWD, JMA and the Australian Bureau of Meteorology | Facts from public schedules |

Reference: *The 1090 MHz Riddle* by Junzi Sun, for ADS-B decoding.
