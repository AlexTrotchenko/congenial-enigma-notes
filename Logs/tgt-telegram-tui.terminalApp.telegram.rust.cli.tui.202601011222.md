---
title: Tool Note - tgt
vendor: Federico Bruzzone
date: 202601011222
categories: [terminalApp, telegram, rust, cli, tui, messaging]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/FedericoBruzzone/tgt
documentation: https://github.com/FedericoBruzzone/tgt/tree/main/docs/configuration
type: tool
---

# tgt - Terminal User Interface for Telegram

## Overview
tgt is a terminal-based Telegram client written in Rust, providing a lightweight and keyboard-driven way to access Telegram chats. It features fully customizable keybindings, cross-platform support, and multiple installation methods including cargo, Docker, and native package managers. Ideal for developers and power users who prefer working in the terminal.

## Core Features
- Full Telegram messaging functionality with chat list navigation and message management
- Vim-inspired keybindings with complete customization via TOML configuration files
- Cross-platform support for Windows, macOS, and Linux through Rust compilation
- Multiple installation options including cargo, Docker, NixOS flake, and Arch Linux AUR
- Message operations including copy, edit, reply, and delete functionality
- Resizable UI panels for chat list and prompt areas

## Quick Start Guide
1. Install via cargo: `cargo install tgt`
2. Run `tgt` to start the application
3. Authenticate with your Telegram account on first launch
4. Use `Alt+1` to focus chat list, `Alt+2` for chat, `Alt+3` for prompt
5. Navigate chats with arrow keys, press `Enter` to open
6. Type message in prompt, press `Alt+Enter` to send

## Use Cases
- Managing Telegram messages from the command line without leaving the terminal
- Lightweight Telegram access on resource-constrained systems or servers
- Keyboard-centric messaging workflow for developers and power users
- Remote server access to Telegram via SSH sessions
- Distraction-free messaging environment without GUI overhead

## Technical Details
- **Pricing Model**: Free and open source under MIT and Apache-2.0 dual license
- **Platform Support**: Windows, macOS, Linux (requires Rust toolchain or pre-built binaries)
- **Integration Options**: Built on tdlib (Telegram Database Library), Docker containerization available
- **Data Export**: Uses standard Telegram backend; data managed through Telegram's infrastructure

## Resources
- [Official Repository](https://github.com/FedericoBruzzone/tgt)
- [Configuration Documentation](https://github.com/FedericoBruzzone/tgt/tree/main/docs/configuration)
- [Contributing Guide](https://github.com/FedericoBruzzone/tgt/blob/main/CONTRIBUTING.md)
- [Crates.io Package](https://crates.io/crates/tgt)
- [AUR Package (Arch Linux)](https://aur.archlinux.org/packages/tgt-client-git)

## Notes & Considerations
This is the first major release (v1.0.0) so some features may still be under development. Requires tdlib dependency which can be auto-downloaded via the `download-tdlib` cargo feature or manually configured via `LOCAL_TDLIB_PATH` environment variable. When prompt is focused, `q` and `Ctrl+C` do not quit—press `Esc` first to return to "None" state. Configuration files should be placed in `~/.tgt/config/` directory. Docker users should use interactive mode to maintain session state across container restarts.
