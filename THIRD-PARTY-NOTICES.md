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
| **acars-decoder** (Airframes contributors), bundled with **pako** (Vitaly Puzrin, Andrei Tuputcyn) | Airband Receiver from 0.9.0: reading the many plane message formats | MIT | https://github.com/airframesio/acars-decoder-typescript |
| **Jint** (Sébastien Ros) | Running the message decoder inside the app | BSD 2-Clause | https://github.com/sebastienros/jint |
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
| **FAA** NASR frequency data (US airband channels) and the FAA aircraft registry (US aircraft models) | US government work, public domain |
| **Mictronics aircraft database** (https://github.com/Mictronics/aircraft-database): aircraft registrations and models outside the US, Airband Receiver from 1.0.0 | Open Data Commons Attribution License (ODC-By) v1.0, https://opendatacommons.org/licenses/by/1-0/ |
| **EiBi** worldwide shortwave schedule, by Eike Bierwirth (http://www.eibispace.de) | Free for use in third-party software |
| DRM broadcast schedule (drm.org); radiofax schedules published by NOAA, DWD, JMA and the Australian Bureau of Meteorology | Facts from public schedules |

Reference: *The 1090 MHz Riddle* by Junzi Sun, for ADS-B decoding.

## License texts for the message decoder

**acars-decoder** — MIT License, Copyright (c) 2026 Airframes contributors. **pako** — MIT License,
Copyright (C) 2014-2017 by Vitaly Puzrin and Andrei Tuputcyn.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the "Software"), to deal in the Software without restriction,
including without limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions: The above copyright notice and this
permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT
OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

**Jint** — BSD 2-Clause License, Copyright (c) Sébastien Ros. Redistribution and use in source and
binary forms, with or without modification, are permitted provided that the following conditions
are met: (1) Redistributions of source code must retain the above copyright notice, this list of
conditions and the following disclaimer. (2) Redistributions in binary form must reproduce the
above copyright notice, this list of conditions and the following disclaimer in the documentation
and/or other materials provided with the distribution. THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT
HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES ARE DISCLAIMED. IN NO EVENT
SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DAMAGES ARISING IN ANY WAY OUT OF THE
USE OF THIS SOFTWARE.
