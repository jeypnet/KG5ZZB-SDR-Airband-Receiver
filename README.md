<div align="center">

# ✈ KG5ZZB SDR Airband Receiver

**Hear pilots and air traffic control, see the planes around you on a map and read the messages they send,**<br>
**with an inexpensive RTL-SDR USB dongle.** Everything from your own antenna, offline.

<br>

[![Download Airband Receiver 1.0 for Windows](https://img.shields.io/badge/⬇_Download-Airband_Receiver_1.0_·_Windows-0369A1?style=for-the-badge)](https://github.com/jeypnet/KG5ZZB-Radio-Apps/releases/download/airband-v1.0.2/KG5ZZB-SDR-Airband-Receiver-1.0.2-windows-x64.zip)
[![macOS](https://img.shields.io/badge/⬇_macOS-Apple_silicon_·_Intel-333?style=for-the-badge&logo=apple)](#-downloads-for-every-system)
[![Linux](https://img.shields.io/badge/⬇_Linux-64--bit-333?style=for-the-badge&logo=linux&logoColor=white)](#-downloads-for-every-system)
<br>
**Free download** · Windows · macOS · Linux · English · Español · 中文 · 日本語 · no install · [release notes](https://github.com/jeypnet/KG5ZZB-Radio-Apps/releases/tag/airband-v1.0.2)

**[Full guide, measurements and all downloads → KG5ZZB Radio Apps](https://github.com/jeypnet/KG5ZZB-Radio-Apps)**

</div>

[![KG5ZZB SDR Airband Receiver 1.0](docs/images/airband-v1-hero-free.png)](docs/images/airband-v1-hero-free.png)

| 🎧 **LISTEN** | ✈ **MAP** | ✉ **MESSAGES** |
|:---:|:---:|:---:|
| [![Listening](docs/images/listen.png)](docs/images/listen.png) | [![Planes on the map](docs/images/map.png)](docs/images/map.png) | [![Messages in plain words](docs/images/messages.png)](docs/images/messages.png) |
| A scanner for pilots and air traffic control, channels found for you | Every plane around you on an offline map | Plane messages explained in one simple sentence |

- 🎙 **CLEAR VOICE:** louder, crisper voices with less hiss, with one button.
- ⚡ **Our own RTL-SDR driver:** the scanner almost twice as fast as with the free driver. [See the measurements](https://github.com/jeypnet/KG5ZZB-Radio-Apps/blob/main/docs/airband-driver.md).
- 🔧 **One-click dongle setup** on Windows.
- 📻 **Two receivers, plug and play:** MAP + VOICE or MAP + MESSAGES, side by side.
- ▶ **Try the demo** without a dongle.

## ⬇ Downloads for every system

| System | Version | Download |
|---|---|---|
| 🪟 **Windows 10 / 11** (64-bit) | **1.0.2** · free | **[KG5ZZB-SDR-Airband-Receiver-1.0.2-windows-x64.zip](https://github.com/jeypnet/KG5ZZB-Radio-Apps/releases/download/airband-v1.0.2/KG5ZZB-SDR-Airband-Receiver-1.0.2-windows-x64.zip)** |
| 🍎 **macOS** 12+, Apple silicon (M1–M4) | **1.0.2** · free | **[KG5ZZB-SDR-Airband-Receiver-1.0.2-macos-arm64.zip](https://github.com/jeypnet/KG5ZZB-Radio-Apps/releases/download/airband-v1.0.2/KG5ZZB-SDR-Airband-Receiver-1.0.2-macos-arm64.zip)** |
| 🍎 **macOS** 12+, Intel | **1.0.2** · free | **[KG5ZZB-SDR-Airband-Receiver-1.0.2-macos-x64.zip](https://github.com/jeypnet/KG5ZZB-Radio-Apps/releases/download/airband-v1.0.2/KG5ZZB-SDR-Airband-Receiver-1.0.2-macos-x64.zip)** |
| 🐧 **Linux** 64-bit, with a desktop | **1.0.2** · free | **[KG5ZZB-SDR-Airband-Receiver-1.0.2-linux-x64.tar.gz](https://github.com/jeypnet/KG5ZZB-Radio-Apps/releases/download/airband-v1.0.2/KG5ZZB-SDR-Airband-Receiver-1.0.2-linux-x64.tar.gz)** |

- **Windows:** unzip the whole folder and run `KG5ZZB-SDR-Airband-Receiver.exe`. A brand-new dongle: press **🔧 Set up dongle** once. If Windows says "Windows protected your PC", click **More info → Run anyway**.
- **Mac:** run `brew install libusb` once, then the first time **right-click the app → Open → Open**. Steps in `README-MAC.txt` inside the zip.
- **Linux:** copy the included udev rule once so your user can open the dongle; steps in `README-LINUX.txt` inside the archive.
- **🌐 Languages:** English, Español, 中文 and 日本語 (automatic, or the 🌐 button).
- **Free download.** The scanner and the plane map are free, for good. For the first 30 days every extra is switched on too; after that, CLEAR VOICE, HOLD, MONITOR, DELAY and plane messages are an optional upgrade inside the app.

All versions: [Releases](https://github.com/jeypnet/KG5ZZB-Radio-Apps/releases).

## 📻 Compatible receivers

| Receiver | Models | Notes |
|---|---|---|
| **RTL-SDR dongles** with an R820T, R820T2, R828D or R860 tuner | Nooelec NESDR SMArt v4 / v5, NESDR Mini 2+, NESDR Nano 2+ / 3 · RTL-SDR Blog V3 and V4 · other RTL2832U sticks with these tuners | Our own driver from 0.8.0. One-click USB setup on Windows. |
| **SDRplay** | RSP1, RSP1A, RSP1B, RSP2, RSP2pro, RSPduo (both tuners at once), RSPdx, RSPdx-R2 | **BETA**, from 0.7.0. Install the free SDRplay API from [sdrplay.com](https://www.sdrplay.com/api/) first (SDRuno users already have it). |
| **Airspy** | Airspy R2, Airspy Mini | **BETA**, from 0.7.0. |
| Not supported | Very old RTL-SDR sticks with an E4000, FC0012, FC0013 or FC2580 tuner (for example the NESDR XTR) | |

**Antennas:** a simple dipole or whip for the airband (118–137 MHz) and a 1090 MHz antenna for planes. With two receivers, give each one its own antenna; the app finds which is which.

Older version 0.6.2 stays available here under [Releases](../../releases) for old links.

All rights reserved © 2026 KG5ZZB ([LICENSE](LICENSE)). Third-party components: [THIRD-PARTY-NOTICES.md](THIRD-PARTY-NOTICES.md). Support the project on [Ko-fi](https://ko-fi.com/kg5zzb).
