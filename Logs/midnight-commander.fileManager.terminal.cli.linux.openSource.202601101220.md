---
title: Tool Note - Midnight Commander
vendor: GNU Project (Community Maintained)
date: 202601101220
categories: [fileManager, terminal, cli, linux, openSource, productivity]
pricing: free
platforms: [linux, mac, freeBSD, openBSD]
source: https://midnight-commander.org/
documentation: https://source.midnight-commander.org/man/mc.html
type: tool
---

# Midnight Commander - Visual Dual-Pane Terminal File Manager

## Overview
GNU Midnight Commander (mc) is a feature-rich, text-mode, dual-pane file manager that runs entirely in the terminal. It provides a visual interface for file operations, making it ideal for system administrators, developers, and power users who work primarily in command-line environments. Works seamlessly over SSH connections and remote shells.

## Core Features
- Dual-pane interface for intuitive file navigation and operations
- Built-in internal viewer (mcview) for previewing files without external tools
- Integrated text editor (mcedit) with syntax highlighting
- Built-in diff viewer (mcdiff) for comparing files
- Virtual filesystem support for browsing archives (tar, zip, rpm, etc.)
- Works over SSH, in X terminals, and all types of remote shells
- Subshell support for executing commands without leaving the interface
- Customizable color themes and skins
- Context-sensitive help system (F1)

## Quick Start Guide
1. Install via package manager:
   - Debian/Ubuntu: `apt-get install mc`
   - Fedora/RHEL: `dnf install mc`
   - macOS: `brew install midnight-commander`
   - FreeBSD: `pkg install mc`
2. Launch by typing `mc` in terminal
3. Navigate using arrow keys; Tab switches between panes
4. Use F-keys for operations: F5 (copy), F6 (move), F8 (delete), F3 (view), F4 (edit)
5. Press F1 for context-sensitive help at any time
6. Press F10 or Ctrl+O to toggle between mc and shell

## Use Cases
- Managing files on remote servers via SSH
- Bulk file operations (copy, move, rename, delete)
- Quick file previewing and editing on headless systems
- Comparing files and directories with built-in diff viewer
- Browsing and extracting archives without unpacking
- System administration tasks in terminal environments

## Technical Details
- **Pricing Model**: Completely free and open source (GPLv3+ license)
- **Platform Support**: Linux (all distributions), macOS (via Homebrew), FreeBSD, OpenBSD, and other Unix-like systems
- **Integration Options**: Works with ncurses or S-Lang libraries; integrates with system shell
- **Data Export**: Standard filesystem operations; no proprietary formats

## Resources
- [Official Website](https://midnight-commander.org/)
- [Documentation (man mc)](https://source.midnight-commander.org/man/mc.html)
- [Editor Manual (mcedit)](https://source.midnight-commander.org/man/mcedit.html)
- [Viewer Manual (mcview)](https://source.midnight-commander.org/man/mcview.html)
- [Diff Viewer Manual (mcdiff)](https://source.midnight-commander.org/man/mcdiff.html)
- [GitHub Repository](https://github.com/MidnightCommander/mc)
- [Color Schemes/Skins](https://skins.midnight-commander.org)
- [Source Releases](https://ftp.osuosl.org/pub/midnightcommander/?C=N;O=D)

## Notes & Considerations
Requires terminal emulator with proper character encoding support for best display. Learning F-key shortcuts significantly improves productivity. Configuration files stored in `~/.config/mc/`. Some features may require additional packages depending on distribution. Written in C, making it lightweight and fast even on older hardware.
