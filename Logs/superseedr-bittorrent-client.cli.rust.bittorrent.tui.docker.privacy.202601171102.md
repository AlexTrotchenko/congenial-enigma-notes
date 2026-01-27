---
title: Tool Note - Superseedr
vendor: Jagalite
date: 202601171102
categories: [cli, rust, bittorrent, tui, docker, privacy]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/Jagalite/superseedr
documentation: https://github.com/Jagalite/superseedr/blob/main/FAQ.md
type: tool
---

# Superseedr - Modern BitTorrent Client for the Terminal

## Overview
Superseedr is a high-performance Rust-based BitTorrent client featuring an animated terminal UI with real-time swarm analytics and network visualization. Built for privacy-conscious users and homelab enthusiasts, it offers seamless VPN integration via Docker/Gluetun with automatic port forwarding and zero manual network configuration.

## Core Features
- **Animated TUI (1-60 FPS)**: High-performance terminal interface built with Ratatui for smooth, responsive interaction
- **Real-time Swarm Analytics**: Live heatmaps, peer metrics, and network graphs for complete download observability
- **VPN-Native Docker Setup**: Official Gluetun integration with automatic port forwarding and kill-switch protection
- **Dynamic Port Reloading**: Automatically detects VPN port changes and reloads listener without restart
- **Model-Based Testing**: Unparalleled reliability through formal verification and fuzzing
- **OS-Level Magnet Support**: Click magnet links in browser or open .torrent files directly
- **Private Tracker Builds**: Versions available without PEX and DHT for private tracker compliance
- **Crash Recovery**: Persistent state ensures downloads resume after unexpected shutdowns

## Quick Start Guide
1. Install via cargo: `cargo install superseedr` or download from releases page for your platform
2. Open terminal and run `superseedr` to launch the TUI
3. Press `c` to access configuration settings and customize preferences
4. Add torrents by clicking magnet links in browser or pasting with Ctrl+V
5. Press `m` inside the app for full manual with all shortcuts and features
6. Optional: Increase file descriptors for optimal performance with `ulimit -n 65536`

## Use Cases
- Privacy-focused downloading with VPN tunnel protection
- Homelab/server torrent management via terminal or SSH
- Real-time monitoring of download swarms and peer connections
- Headless server deployments with Docker Compose
- Private tracker usage with specialized builds

## Technical Details
- **Pricing Model**: Free and open source (GPL-3.0 license)
- **Platform Support**: Windows (.msi), macOS (.pkg), Debian (.deb), Arch Linux (AUR)
- **Integration Options**: Docker Compose with Gluetun VPN, supports OpenVPN and WireGuard
- **Data Export**: Standard BitTorrent state files, configurable download paths

## Resources
- [Official Repository](https://github.com/Jagalite/superseedr)
- [Releases & Downloads](https://github.com/Jagalite/superseedr/releases)
- [FAQ](https://github.com/Jagalite/superseedr/blob/main/FAQ.md)
- [Contributing Guide](https://github.com/Jagalite/superseedr/blob/main/CONTRIBUTING.md)
- [Changelog](https://github.com/Jagalite/superseedr/blob/main/CHANGELOG.md)
- [Roadmap](https://github.com/Jagalite/superseedr/blob/main/ROADMAP.md)
- [AUR Package](https://aur.archlinux.org/packages/superseedr)

## Notes & Considerations
Written in Rust (97.9%) ensuring memory safety and high performance. Docker setup requires configuration of `.env` and `.gluetun.env` files for VPN credentials. Current version is v0.9.28 as of December 2025. Terminal Trove "Tool of the Week" recognition. For Docker detachment without stopping: use `Ctrl+P` then `Ctrl+Q` (optionally press `z` first for power-saving mode).
