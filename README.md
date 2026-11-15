<div align="center">

# ✈ KG5ZZB SDR Airband Receiver

**Hear pilots and air traffic control, see the planes around you on a map and read the messages they send,**<br>
**with an inexpensive RTL-SDR USB dongle.** Everything from your own antenna, offline.

<br>

[![Download Airband Receiver 0.9.0 for Windows](https://img.shields.io/badge/⬇_Download-Airband_Receiver_0.9.0_·_Windows-0369A1?style=for-the-badge)](https://github.com/jeypnet/KG5ZZB-Radio-Apps/releases/download/airband-v0.9.0-trial/KG5ZZB-SDR-Airband-Receiver-0.9.0-trial-windows-x64.zip)
<br>
**Free 30-day trial** · Windows 10/11 · no install, just unzip · [Mac & Linux BETA](#-downloads-for-every-system)

**[Full guide, measurements and all downloads → KG5ZZB Radio Apps](https://github.com/jeypnet/KG5ZZB-Radio-Apps)**

</div>

[![The scanner on the left, the planes on the right](docs/images/map-voice.png)](docs/images/map-voice.png)

| 🎧 **LISTEN** | ✈ **MAP** | ✉ **MESSAGES** |
|:---:|:---:|:---:|
| [![Listening](docs/images/listen.png)](docs/images/listen.png) | [![Planes on the map](docs/images/map.png)](docs/images/map.png) | [![Messages in plain words](docs/images/messages.png)](docs/images/messages.png) |
| A scanner for pilots and air traffic control, channels found for you | Every plane around you on an offline map | Plane messages explained in one simple sentence |

- 🎙 **AI noise filter:** clearer voices with one button.
- ⚡ **Our own RTL-SDR driver:** the scanner twice as fast as with the free driver. [See the measurements](https://github.com/jeypnet/KG5ZZB-Radio-Apps/blob/main/docs/airband-driver.md).
- 🔧 **One-click dongle setup** on Windows.
- 📻 **Two receivers, plug and play:** MAP + VOICE or MAP + MESSAGES, side by side.
- ▶ **Try the demo** without a dongle.

## ⬇ Downloads for every system

| System | Version | Download |
|---|---|---|
| 🪟 **Windows 10 / 11** (64-bit) | **0.9.0** · free 30-day trial | **[KG5ZZB-SDR-Airband-Receiver-0.9.0-trial-windows-x64.zip](https://github.com/jeypnet/KG5ZZB-Radio-Apps/releases/download/airband-v0.9.0-trial/KG5ZZB-SDR-Airband-Receiver-0.9.0-trial-windows-x64.zip)** |
| 🍎 **macOS** 12+, Apple silicon (M1–M4) | 0.6.2 · **BETA** | [KG5ZZB-SDR-Airband-Receiver-macos-arm64.zip](https://github.com/jeypnet/KG5ZZB-Radio-Apps/releases/download/airband-v0.6.2/KG5ZZB-SDR-Airband-Receiver-macos-arm64.zip) |
| 🍎 **macOS** 12+, Intel | 0.6.2 · **BETA** | [KG5ZZB-SDR-Airband-Receiver-macos-x64.zip](https://github.com/jeypnet/KG5ZZB-Radio-Apps/releases/download/airband-v0.6.2/KG5ZZB-SDR-Airband-Receiver-macos-x64.zip) |
| 🐧 **Linux** 64-bit, with a desktop | 0.6.2 · **BETA** | [KG5ZZB-SDR-Airband-Receiver-linux-x64.tar.gz](https://github.com/jeypnet/KG5ZZB-Radio-Apps/releases/download/airband-v0.6.2/KG5ZZB-SDR-Airband-Receiver-linux-x64.tar.gz) |

- **Windows:** unzip the whole folder and run `KG5ZZB-SDR-Airband-Receiver.exe`. A brand-new dongle: press **🔧 Set up dongle** once. If Windows says "Windows protected your PC", click **More info → Run anyway**.
- **Mac BETA:** run `brew install librtlsdr` once, then the first time **right-click the app → Open → Open**. Steps in `README-MAC.txt` inside the zip.
- **Linux BETA:** install librtlsdr (`sudo apt install librtlsdr2`) and block the TV driver; steps in `README-LINUX.txt` inside the archive.
- The Mac and Linux BETA (0.6.2) work with RTL-SDR dongles and have the scanner, the AI noise filter and the planes map. 0.9.0 for Mac and Linux is on the way.

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
