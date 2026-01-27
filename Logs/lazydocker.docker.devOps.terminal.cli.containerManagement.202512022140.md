---
title: Tool Note - lazydocker
vendor: Jesse Duffield
date: 202512022140
categories: [docker, devOps, terminal, cli, containerManagement, productivity]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/jesseduffield/lazydocker
documentation: https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md
type: tool
---

# lazydocker - The Lazier Way to Manage Everything Docker

## Overview
lazydocker is a simple terminal UI for Docker and Docker Compose, written in Go. It consolidates all container management tasks into a single terminal window with keyboard shortcuts and mouse support, eliminating the need to memorize complex Docker commands. Ideal for developers who work with containerized applications and want real-time visibility into their Docker environment.

## Core Features
- **Single-pane container management** - View state of all Docker/Docker Compose containers at a glance
- **Real-time log viewing** - Stream logs for individual containers/services without command juggling
- **ASCII metric graphs** - Visual CPU/memory monitoring directly in terminal
- **Mouse support** - Click-to-interact alongside keyboard shortcuts
- **Container lifecycle management** - Restart, remove, rebuild containers with single keypresses
- **Image layer inspection** - View ancestor layers of any Docker image
- **Resource cleanup** - Prune containers, images, and volumes to reclaim disk space
- **Custom commands** - Extend functionality with your own command configurations

## Quick Start Guide
1. **Install via Homebrew (Mac/Linux)**:
   ```bash
   brew install jesseduffield/lazydocker/lazydocker
   ```
2. **Or via Scoop (Windows)**:
   ```bash
   scoop install lazydocker
   ```
3. **Or via Go**:
   ```bash
   go install github.com/jesseduffield/lazydocker@latest
   ```
4. **Launch the UI**:
   ```bash
   lazydocker
   ```
5. **Create an alias for convenience**:
   ```bash
   echo "alias lzd='lazydocker'" >> ~/.zshrc
   ```
6. **Navigate** using arrow keys or mouse, press `?` for keybindings help

## Use Cases
- Monitoring and debugging microservices in Docker Compose environments
- Quick container restarts during local development
- Viewing real-time logs without managing multiple terminal windows
- Identifying resource-hungry containers via built-in metrics
- Cleaning up unused Docker resources to free disk space
- Attaching to running containers for debugging

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: macOS, Linux, Windows; Docker >= 29.0.0 (API >= 1.24); Docker-Compose >= 1.23.2 (optional)
- **Integration Options**: Configurable custom commands, works with standard Docker daemon
- **Data Export**: N/A (management tool, not data storage)

## Resources
- [Official GitHub Repository](https://github.com/jesseduffield/lazydocker)
- [Configuration Documentation](https://github.com/jesseduffield/lazydocker/blob/master/docs/Config.md)
- [Keybindings Reference](https://github.com/jesseduffield/lazydocker/blob/master/docs/keybindings)
- [Video Tutorial](https://youtu.be/NICqQPxwJWw)
- [Releases/Downloads](https://github.com/jesseduffield/lazydocker/releases)
- [Discord Community](https://discord.gg/lazygit)

## Notes & Considerations
- Logs display only from the last hour by default to reduce CPU load; configurable via `commandTemplates` in config
- Hold Option/Alt key while dragging to select text (mouse events enabled by default)
- Running lazydocker inside a Docker container has known issues with log viewing and CPU metrics
- Config file location: `~/.config/jesseduffield/lazydocker/config.yml`
- Press `o` on the project panel to edit config; press `e` if using Vim
- Text wrapping disabled by default due to CPU concerns; enable with `gui.wrapMainPanel: true`
- Related tools: [docui](https://github.com/skanehira/docui) (creation-focused), [Portainer](https://github.com/portainer/portainer) (web-based)
