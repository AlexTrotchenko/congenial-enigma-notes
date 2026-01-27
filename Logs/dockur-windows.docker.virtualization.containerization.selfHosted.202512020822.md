---
title: Tool Note - dockur/windows
vendor: dockur (Open Source)
date: 202512020822
categories: [docker, virtualization, windows, containerization, devOps, selfHosted]
pricing: free
platforms: [linux, windows]
source: https://github.com/dockur/windows
documentation: https://github.com/dockur/windows#readme
type: tool
---

# dockur/windows - Windows Inside a Docker Container

## Overview
dockur/windows is an open-source project that enables running Windows operating systems inside Docker containers with KVM acceleration. It provides fully automated Windows installation with a web-based viewer, supporting versions from Windows 2000 through Windows 11 and various Server editions. Ideal for developers, testers, and system administrators who need quick, reproducible Windows environments.

## Core Features
- **Automated Installation**: Complete hands-off Windows setup with no manual intervention required
- **KVM Acceleration**: Hardware-accelerated virtualization for near-native performance
- **Web-based Viewer**: Access Windows via browser on port 8006 during installation
- **RDP Support**: Full Remote Desktop Protocol access on port 3389 for production use
- **Multiple Windows Versions**: Support for Windows 2000 through 11, plus Server editions (2003-2025)
- **Custom ISO Support**: Use your own Windows ISO files or download automatically
- **Shared Folders**: Built-in file sharing between host and container
- **Multi-language Support**: 30+ languages available for Windows installation

## Quick Start Guide
1. Ensure KVM is available on your Linux host (`sudo kvm-ok`)
2. Create a `docker-compose.yml` file with the configuration below
3. Run `docker compose up -d` to start the container
4. Open `http://localhost:8006` in your browser
5. Wait for automatic installation to complete (see desktop appear)
6. Connect via RDP for better experience (user: `Docker`, password: `admin`)

**Minimal docker-compose.yml:**
```yaml
services:
  windows:
    image: dockurr/windows
    container_name: windows
    environment:
      VERSION: "11"
    devices:
      - /dev/kvm
      - /dev/net/tun
    cap_add:
      - NET_ADMIN
    ports:
      - 8006:8006
      - 3389:3389/tcp
      - 3389:3389/udp
    volumes:
      - ./windows:/storage
    restart: always
    stop_grace_period: 2m
```

## Use Cases
- Testing software across multiple Windows versions
- Running Windows-only applications on Linux servers
- Creating disposable Windows development environments
- CI/CD pipelines requiring Windows testing
- Legacy application support (Windows XP, 2000, Server 2003)
- Isolated Windows environments for security research

## Technical Details
- **Pricing Model**: Completely free and open-source (MIT License)
- **Platform Support**: Linux (native), Windows 11/10 with Docker Desktop or Podman; macOS not supported
- **System Requirements**: KVM-capable CPU (Intel VT-x or AMD SVM), Docker or Podman
- **Default Resources**: 2 CPU cores, 4GB RAM, 64GB disk (all configurable)
- **Data Export**: Standard Docker volumes, direct disk passthrough supported

## Supported Windows Versions

| Version | Code | Size |
|---------|------|------|
| Windows 11 Pro | `11` | 7.2 GB |
| Windows 11 LTSC | `11l` | 4.7 GB |
| Windows 10 Pro | `10` | 5.7 GB |
| Windows 10 LTSC | `10l` | 4.6 GB |
| Windows 7 Ultimate | `7u` | 3.1 GB |
| Windows XP Pro | `xp` | 0.6 GB |
| Windows Server 2025 | `2025` | 6.7 GB |
| Windows Server 2022 | `2022` | 6.0 GB |

## Configuration Options

**Resource Allocation:**
```yaml
environment:
  RAM_SIZE: "8G"
  CPU_CORES: "4"
  DISK_SIZE: "256G"
```

**Custom Credentials:**
```yaml
environment:
  USERNAME: "myuser"
  PASSWORD: "mypassword"
```

**Language & Region:**
```yaml
environment:
  LANGUAGE: "French"
  REGION: "fr-FR"
  KEYBOARD: "fr-FR"
```

## Resources
- [Official GitHub Repository](https://github.com/dockur/windows)
- [Documentation (README)](https://github.com/dockur/windows#readme)
- [ARM64 Version](https://github.com/dockur/windows-arm)
- [macOS Version](https://github.com/dockur/macos)
- [Issues & Support](https://github.com/dockur/windows/issues)

## Notes & Considerations
- Requires KVM support - not available on most cloud VPS providers or macOS
- Web viewer is low quality; use RDP client for regular use after installation
- Default credentials are `Docker`/`admin` - change for any production use
- Container uses bridge networking by default; macvlan available for dedicated IP
- Project is legal - uses only open-source code and Microsoft's generic trial keys
- USB passthrough supported but avoid connecting USB drives during initial installation
- For nested virtualization (running inside a VM), ensure it's enabled in the hypervisor
