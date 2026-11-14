# Third-party components

The KG5ZZB - SDR Airband Receiver includes the following open-source components and data. Each
remains under its own license. Where a license requires source code to be available, it is
linked here.

## Shipped with the app

| Component | Used for | License | Source |
|---|---|---|---|
| **rtl-sdr** (osmocom): `rtl_tcp.exe`, `rtl_eeprom.exe`, `librtlsdr.dll` in the `rtl-sdr` folder | RTL-SDR dongles. Official Windows build 20261018, unmodified. `rtl_tcp.exe` runs as a separate program; the app talks to it over a local network connection. | GNU GPL v2.0 or later (text in `rtl-sdr\COPYING.txt`) | https://gitea.osmocom.org/sdr/rtl-sdr |
| **libusb** `libusb-1.0.dll` (in `rtl-sdr` and `airspy`) | USB access for the receiver drivers. Unmodified, separate library. | GNU LGPL v2.1 | https://github.com/libusb/libusb |
| **libwinpthread** (mingw-w64), `rtl-sdr\libwinpthread-1.dll` | Threads for rtl-sdr | MIT / ZPL | https://www.mingw-w64.org |
| **libairspy**, `airspy\airspy.dll` | Airspy R2 / Mini receivers. Official build v1.0.10, unmodified. | BSD 3-Clause (text in `airspy\README-airspy.txt`) | https://github.com/airspy/airspyone_host |
| **pthreads-win32**, `airspy\pthreadVC2.dll` | Threads for libairspy | GNU LGPL v2.1 | https://sourceware.org/pthreads-win32/ |
| **libwdi** | One-click USB driver setup (Windows) | GNU LGPL v3.0 | https://github.com/pbatard/libwdi |
| **RNNoise** (Xiph.Org) | AI noise filter | BSD 3-Clause | https://github.com/xiph/rnnoise |
| **NAudio** | Sound output on Windows | MIT | https://github.com/naudio/NAudio |
| **.NET runtime** (Microsoft) | Runs the app | MIT | https://github.com/dotnet/runtime |

SDRplay receivers are used through the SDRplay API that the user installs from sdrplay.com;
nothing of SDRplay's is shipped with the app.

For the GPL and LGPL components above, the complete corresponding source code is available at
the links given; you may replace those files with compatible builds. On request, the author
will also provide a copy of the exact source versions used; contact through
https://ko-fi.com/kg5zzb.

## Data built into the app

| Data | License |
|---|---|
| **OurAirports** airports and frequencies | Public domain |
| **Natural Earth** map outlines | Public domain |

References: *The 1090 MHz Riddle* by Junzi Sun (ADS-B); ICAO Annex 10 Volume III and ETSI EN
301 841 (VDL Mode 2); ARINC 618 public descriptions (ACARS).
