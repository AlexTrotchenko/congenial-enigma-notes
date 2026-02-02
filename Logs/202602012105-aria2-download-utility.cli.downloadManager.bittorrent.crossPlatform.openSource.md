---
title: Tool Note - aria2
vendor: aria2 Project (Tatsuhiro Tsujikawa)
date: 202602012105
categories: [cli, downloadManager, bittorrent, crossPlatform, openSource, networking]
pricing: free
platforms: [windows, mac, linux, android]
source: https://aria2.github.io/
documentation: https://aria2.github.io/manual/en/html/
type: tool
---

# aria2 - Ultra Fast Multi-Protocol Download Utility

## Overview

aria2 is a lightweight, command-line download utility that supports HTTP(S), FTP, SFTP, BitTorrent, and Metalink protocols. It can download files from multiple sources and protocols simultaneously to maximize bandwidth — for example, downloading from HTTP and BitTorrent at the same time while uploading to the swarm. Written in C++, it's cross-platform and highly configurable with JSON-RPC/XML-RPC interfaces for remote control.

## Core Features

- **Multi-protocol support** — download via HTTP(S), FTP, SFTP, BitTorrent, and Metalink from a single tool
- **Multi-source downloading** — fetch a file from multiple servers/protocols simultaneously to maximize bandwidth
- **Segmented downloading** — split files into segments for parallel downloading
- **BitTorrent support** — full BT client with DHT, PEX, MSE/PSE, Multi-Tracker, UDP tracker, Web-Seeding, and Local Peer Discovery
- **Metalink support** — Metalink v3 and v4 (RFC 5854) with automatic chunk checksum validation
- **JSON-RPC & XML-RPC interface** — remote control over HTTP and WebSocket, enabling GUI frontends and automation
- **Daemon mode** — run as a background process for continuous download management
- **Disk cache** — reduces disk I/O activity during downloads
- **Cookie support** — load/save cookies in Firefox, Chrome, and Netscape formats
- **Download/upload throttling** — control bandwidth usage with speed limits
- **IPv6 with Happy Eyeballs** — modern network connectivity support
- **Selective download** — choose specific files from multi-file torrents or Metalinks

## Quick Start Guide

1. Install aria2:
   - macOS: `brew install aria2`
   - Ubuntu/Debian: `sudo apt install aria2`
   - Windows: download from [GitHub releases](https://github.com/aria2/aria2/releases)
2. Download a file: `aria2c https://example.com/file.zip`
3. Download with multiple connections: `aria2c -x 16 https://example.com/largefile.iso`
4. Download a torrent: `aria2c file.torrent`
5. Download from multiple sources: `aria2c "http://mirror1.com/file" "http://mirror2.com/file"`
6. Run as daemon with RPC: `aria2c --enable-rpc --rpc-listen-all`

## Use Cases

- **Accelerated file downloads** — segment large files across multiple connections for faster speeds
- **Torrent client** — lightweight CLI alternative to desktop BitTorrent clients
- **Download automation** — integrate with scripts via JSON-RPC for automated download workflows
- **Mirror management** — download from multiple mirrors simultaneously with automatic failover
- **Server-side downloads** — run as a headless daemon on remote servers for fetching files
- **Batch downloading** — process download lists from text files with custom output paths

## Technical Details

- **Pricing Model:** Free and open-source (GPL-2.0)
- **Platform Support:** Linux, macOS, Windows (native and cross-compiled), Android (NDK cross-compiled). Written in C++11
- **Integration Options:** JSON-RPC (HTTP + WebSocket) and XML-RPC interfaces. Multiple GUI frontends available (AriaNg, webui-aria2)
- **Data Export:** N/A — downloads files directly to disk. Session files can be saved/resumed
- **Dependencies:** Optional: GnuTLS/OpenSSL (HTTPS), libssh2 (SFTP), c-ares (async DNS), libxml2/Expat (Metalink), zlib (compression), libsqlite3 (cookies)
- **Release Schedule:** Minor updates on the 15th of every month

## Resources

- [Official Website](https://aria2.github.io/)
- [Documentation (Online Manual)](https://aria2.github.io/manual/en/html/)
- [GitHub Repository](https://github.com/aria2/aria2)
- [GitHub Releases](https://github.com/aria2/aria2/releases)
- [Russian Manual](https://aria2.github.io/manual/ru/html/)
- [Portuguese Manual](https://aria2.github.io/manual/pt/html/)

## Notes & Considerations

aria2 verifies HTTPS certificates by default since v1.1.0 — ensure CA certificates are properly configured or use `--ca-certificate` to specify a bundle. The tool is purely CLI-based; for a GUI experience, pair with frontends like AriaNg or webui-aria2 via the RPC interface. The major version has stayed at 1 for a long time and the project is in maintenance mode. Cross-compiling for Windows and Android is supported with provided config scripts. Maximum concurrent connections per server can be set with `-x` (default 1, max 16).
