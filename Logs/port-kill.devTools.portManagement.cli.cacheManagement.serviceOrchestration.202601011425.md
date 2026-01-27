---
title: Tool Note - Port Kill
vendor: Treadie HQ
date: 202601011425
categories: [devTools, portManagement, cli, cacheManagement, serviceOrchestration, developerProductivity]
pricing: free
platforms: [mac, linux, windows]
source: https://portkill.com
documentation: https://github.com/treadiehq/port-kill/blob/main/DETAILED.md
type: tool
---

# Port Kill - Find and Free Ports Blocking Your Dev Work

## Overview
Port Kill is a developer utility that helps find and free ports blocking development work, manage development caches, and orchestrate services across macOS, Linux, and Windows. It offers both a GUI status bar app (macOS) and a pure CLI version with features like smart restart, service detection, port guarding, and MCP integration for AI coding assistants like Cursor and Claude.

## Core Features
- **Port Management**: Kill processes on specific ports, scan port ranges, guard ports from unauthorized use, and perform security audits
- **Smart Restart**: Automatically restart killed processes using their original startup commands with history tracking
- **Service Detection & Orchestration**: Discover npm scripts, Docker Compose services, Procfiles, and Python apps; manage multiple services via YAML config
- **Cache Management**: Clean development caches for Rust, JavaScript, Python, Java with safe backups and restore capability
- **Real-time Dashboard**: Web-based dashboard for process monitoring, system resources, history analytics, and security auditing
- **MCP Integration**: Use Port Kill directly from Cursor, Claude, and other AI tools via Model Context Protocol

## Quick Start Guide
1. Install via curl: `curl -fsSL https://raw.githubusercontent.com/treadiehq/port-kill/main/install-release.sh | bash`
2. Kill a process blocking a port: `port-kill 3000`
3. List all ports in use: `port-kill --list`
4. Kill and restart a process: `port-kill --restart 3000`
5. Detect available services: `port-kill --detect`
6. Start orchestration: `port-kill --init-config` then `port-kill --up`

## Use Cases
- Freeing up ports blocked by zombie development server processes
- Managing multiple microservices in local development environments
- Cleaning stale caches (node_modules, target/, __pycache__) to recover disk space
- Guarding reserved ports from accidental use by other processes
- Remote port management over SSH for server maintenance
- Integrating port management into AI-assisted coding workflows

## Technical Details
- **Pricing Model**: Free and open source (FSL-1.1-MIT License)
- **Platform Support**: macOS (GUI + CLI), Linux (CLI), Windows (CLI); requires Rust for building from source
- **Integration Options**: MCP server for AI tools, SSH remote mode, JSON output for scripting, configurable presets
- **Data Export**: JSON output available for all commands (`--json` flag)

## Resources
- [Official Website](https://portkill.com)
- [GitHub Repository](https://github.com/treadiehq/port-kill)
- [Detailed Documentation](https://github.com/treadiehq/port-kill/blob/main/DETAILED.md)
- [Scripting Guide](https://github.com/treadiehq/port-kill/blob/main/SCRIPTING.md)
- [Windows Guide](https://github.com/treadiehq/port-kill/blob/main/WINDOWS.md)
- [MCP Integration](https://github.com/treadiehq/port-kill/blob/main/mcp/README.md)
- [Discord Community](https://discord.gg/KqdBcqRk5E)

## Notes & Considerations
Windows users must restart their terminal completely after installation for PATH changes to take effect. The GUI status bar app is macOS-only; Linux and Windows use the console binary. Cache cleaning operations create timestamped backups by default for safety. For MCP integration, the server requires the `port-kill-console` binary to be accessible on PATH or specified via `PORT_KILL_BIN` environment variable. Built with Rust; Linux installation requires GTK3 and related development packages.
