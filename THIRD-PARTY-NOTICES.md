# Third-party components

The KG5ZZB Radio Apps include the following open-source components and data. Each remains
under its own license. Where a license requires source code to be available, it is linked here.

## Libraries shipped with the apps

| Component | Used for | License | Source |
|---|---|---|---|
| **librtlsdr** (osmocom rtl-sdr), `rtlsdr.dll` | Talking to the RTL-SDR dongle. Shipped unmodified as a separate library. | GNU GPL v2.0 | https://gitea.osmocom.org/sdr/rtl-sdr (version 2.0.x) |
| **libusb**, `libusb-1.0.dll` | USB access for librtlsdr. Shipped unmodified as a separate library. | GNU LGPL v2.1 | https://github.com/libusb/libusb |
| **libwdi** | One-click USB driver setup (Windows) | GNU LGPL v3.0 | https://github.com/pbatard/libwdi |
| **RNNoise** (Xiph.Org) | Airband AI noise filter | BSD 3-Clause | https://github.com/xiph/rnnoise |
| **DeepFilterNet3** (H. Schröter et al.), streaming ONNX export by grazder | Shortwave "Voice only" filter | MIT / Apache-2.0 | https://github.com/Rikorose/DeepFilterNet, https://github.com/grazder/DeepFilterNet |
| **ONNX Runtime** (Microsoft) | Running the DeepFilterNet3 model | MIT | https://github.com/microsoft/onnxruntime |
| **NAudio** | Sound output on Windows | MIT | https://github.com/naudio/NAudio |
| **Avalonia** | User interface on Mac and Linux | MIT | https://github.com/AvaloniaUI/Avalonia |
| **Silk.NET** and **OpenAL Soft** | Sound output on Mac and Linux | MIT; OpenAL Soft: GNU LGPL v2.0 | https://github.com/dotnet/Silk.NET, https://github.com/kcat/openal-soft |
| **.NET runtime** (Microsoft) | Runs the apps | MIT | https://github.com/dotnet/runtime |

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
