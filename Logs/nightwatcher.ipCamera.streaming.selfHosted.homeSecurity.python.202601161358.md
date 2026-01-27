---
title: Tool Note - Night Watcher
vendor: daya0576
date: 202601161358
categories: [ipCamera, streaming, selfHosted, homeSecurity, python, openSource]
pricing: free
platforms: [web]
source: https://github.com/daya0576/nightwatcher
documentation: https://github.com/daya0576/nightwatcher#readme
type: tool
---

# Night Watcher - Simple Web-Based IP Camera Viewer

## Overview
Night Watcher is a lightweight, self-hosted web application for viewing IP camera streams (RTSP) directly in any browser. Built with Python and NiceGUI, it provides blazing-fast video streaming without the latency issues common in platforms like HomeKit. Designed with privacy in mind, it supports local AI detection models and custom detection scripts.

## Core Features
- **Blazing Fast Streaming**: Near-zero latency RTSP video streaming directly to browser without buffering delays
- **Cross-Platform Browser Support**: Works on any device with a modern browser (iOS, Android, desktop)
- **Local AI Detection**: Supports YOLO and other local models for privacy-focused object detection
- **Custom Detection Scripts**: Extensible architecture for implementing custom detection pipelines
- **Minimal UI**: Clean, distraction-free interface with minimal navigation and CSS styling
- **Multi-Camera Support**: View multiple RTSP camera streams simultaneously

## Quick Start Guide
1. **Install uv package manager** if not already installed
2. **Clone the repository**: `git clone https://github.com/daya0576/nightwatcher.git`
3. **Set up virtual environment**: `uv venv && source .venv/bin/activate`
4. **Install dependencies**: `uv sync`
5. **Configure camera URLs**: `export RTSP_URLS=protocol://host:port/script_name?script_params|auth`
6. **Start the server**: `uv run python -m nightwatcher.main`
7. **Open browser** to the local server address to view streams

## Use Cases
- Baby monitoring with real-time viewing from any device
- Home security surveillance with local AI detection
- Multi-camera viewing across different ecosystems (bypassing HomeKit limitations)
- Privacy-conscious video monitoring without cloud processing
- Custom detection workflows (motion, objects, people)

## Technical Details
- **Pricing Model**: Free and open source (MIT-style)
- **Platform Support**: Self-hosted web application; accessible from any browser on any OS
- **Integration Options**: RTSP/ONVIF compatible cameras; works with Home Assistant ONVIF integration
- **Data Export**: Local processing only; no cloud dependencies
- **Tech Stack**: Python 3, NiceGUI, OpenCV
- **Dependencies**: uv package manager, Python 3.x

## Resources
- [GitHub Repository](https://github.com/daya0576/nightwatcher)
- [Documentation / README](https://github.com/daya0576/nightwatcher#readme)
- [Author's Blog Post](https://changchen.me/blog/20250811/nightwatcher/)
- [NiceGUI Framework](https://nicegui.io/) (underlying UI framework)

## Notes & Considerations
- Requires RTSP-compatible IP cameras (tested with Tplink IPC45AW and Aqara G100)
- Currently in active development with planned features including PWA support, Docker containerization, and improved detection configuration
- Camera configuration is done via environment variables (RTSP_URLS)
- Detection features may require additional setup for YOLO models
- No authentication built-in; consider network-level security for remote access
- 168 GitHub stars as of January 2026; small but active community
