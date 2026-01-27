---
title: Tool Note - go2rtc
vendor: AlexxIT
date: 202601171100
categories: [streaming, mediaServer, homeAutomation, selfHosted, iot, videoSurveillance]
pricing: free
platforms: [windows, mac, linux, arm, docker]
source: https://github.com/AlexxIT/go2rtc
documentation: https://github.com/AlexxIT/go2rtc/wiki
type: tool
---

# go2rtc - Ultimate Camera Streaming Application

## Overview
go2rtc is a zero-dependency, zero-config camera streaming application that supports virtually every major streaming protocol including RTSP, RTMP, WebRTC, HLS, HomeKit, and more. It provides the lowest possible latency streaming with multi-source codec negotiation, two-way audio support, and seamless integration with home automation platforms like Home Assistant and NVR systems like Frigate.

## Core Features
- **Universal Protocol Support**: Stream from/to RTSP, RTMP, HTTP-FLV, WebRTC, MSE, HLS, MP4, MJPEG, and HomeKit
- **Zero-Delay Streaming**: Lowest possible latency with automatic codec negotiation between sources and clients
- **Two-Way Audio**: Backchannel audio support for RTSP/ONVIF, Tapo, Hikvision ISAPI, Ring, Tuya cameras
- **HomeKit Integration**: First project to support streaming FROM HomeKit cameras; also export any H264 camera TO HomeKit
- **FFmpeg Transcoding**: On-the-fly transcoding for unsupported codecs with hardware acceleration support
- **Multi-Source Mixing**: Combine tracks from different sources into a single stream with auto-codec matching
- **Cross-Platform Binary**: Single executable for Windows, macOS, Linux (including ARM/Raspberry Pi)

## Quick Start Guide
1. Download the appropriate binary from [releases](https://github.com/AlexxIT/go2rtc/releases/) for your OS
2. Run the executable - no configuration required for basic usage
3. Open web interface at `http://localhost:1984/`
4. Add streams via WebUI or create `go2rtc.yaml` config file in the same directory:
   ```yaml
   streams:
     camera1: rtsp://admin:password@192.168.1.123/stream
   ```
5. Access streams via:
   - WebRTC: `http://localhost:1984/` (web interface)
   - RTSP: `rtsp://localhost:8554/camera1`
   - HLS: `http://localhost:1984/api/stream.m3u8?src=camera1`

## Use Cases
- Low-latency camera viewing in web browsers via WebRTC/MSE
- Unified camera gateway for Home Assistant or Frigate NVR
- Convert proprietary camera protocols to standard RTSP
- Two-way intercom/doorbell integration with browsers
- Stream HomeKit-only cameras to standard protocols
- Publish camera feeds to YouTube/Telegram via RTMP
- USB webcam streaming to network

## Technical Details
- **Pricing Model**: Completely free, open-source (MIT License)
- **Platform Support**: Windows (64/32/ARM), macOS (Intel/ARM), Linux (amd64/i386/ARM64/ARM/ARMv6/MIPS), FreeBSD, Docker
- **Integration Options**: REST API, Home Assistant Add-on, WebRTC Camera integration, Frigate NVR, ngrok tunneling
- **Data Export**: RTSP re-streaming, MP4 snapshots/recordings, MJPEG streams

## Configuration

### Default Ports
| Service | Port | Protocol |
|---------|------|----------|
| HTTP API/WebUI | 1984 | TCP |
| RTSP Server | 8554 | TCP |
| WebRTC | 8555 | TCP/UDP |

### Example Config (go2rtc.yaml)
```yaml
streams:
  dahua_cam: rtsp://admin:pass@192.168.1.100/cam/realmonitor?channel=1&subtype=0
  tapo_cam: tapo://cloud-password@192.168.1.101
  usb_webcam: ffmpeg:device?video=0#video=h264

api:
  listen: ":1984"

webrtc:
  candidates:
    - stun:8555  # for dynamic public IP
```

## Resources
- [Official Repository](https://github.com/AlexxIT/go2rtc)
- [Documentation Wiki](https://github.com/AlexxIT/go2rtc/wiki)
- [Configuration Guide](https://github.com/AlexxIT/go2rtc/wiki/Configuration)
- [Hardware Acceleration](https://github.com/AlexxIT/go2rtc/wiki/Hardware-acceleration)
- [Docker Hub](https://hub.docker.com/r/alexxit/go2rtc)
- [Home Assistant Add-on](https://github.com/AlexxIT/hassio-addons)
- [WebRTC Camera Integration](https://github.com/AlexxIT/WebRTC)

## Supported Camera Sources
| Source Type | Protocol/Format |
|-------------|-----------------|
| RTSP/RTSPS | Standard IP cameras |
| RTMP | Streaming servers |
| HTTP | FLV, MJPEG, JPEG, MPEG-TS |
| ONVIF | Auto-discovery |
| FFmpeg | HLS, files, devices |
| HomeKit | Apple HomeKit cameras |
| Tapo | TP-Link Tapo (native) |
| Ring | Ring doorbells/cameras |
| Tuya | Tuya/Smart Life cameras |
| DVRIP | DVR-IP/NetSurveillance |
| WebRTC | WHEP, Wyze, Kinesis |

## Notes & Considerations
- **Security**: API is accessible without auth on localhost by default; configure `username`/`password` for external access and use reverse proxy (nginx/caddy) for production
- **WebRTC External Access**: May require port forwarding (8555 TCP/UDP) or TURN server for ~10-20% of users behind Symmetric NAT
- **HomeKit Audio**: Uses non-standard AAC-ELD codec; transcoding recommended for compatibility
- **H.265/HEVC**: Limited browser support; works in Safari with experimental flag, Chrome 107+ with hardware support
- **No Official Website**: Only GitHub repository is official; go2rtc[.]com is NOT affiliated with this project
