---
title: Tool Note - OSTT (Open Speech-to-Text)
vendor: Kristofer Lund
date: 202601211648
categories: [speechToText, cli, transcription, audio, openSource, rust]
pricing: free
platforms: [linux, mac]
source: https://github.com/kristoferlund/ostt
documentation: https://github.com/kristoferlund/ostt#readme
type: tool
---

# OSTT - Terminal-Based Speech-to-Text Recording Tool

## Overview
OSTT is an interactive terminal-based audio recording and speech-to-text transcription tool built with Rust. It provides real-time waveform visualization, automatic transcription using multiple AI providers (OpenAI, Deepgram, DeepInfra, Groq), and maintains a browsable history of all transcriptions. Designed for Linux and macOS with minimal dependencies, it works seamlessly as a floating popup window for quick voice input in any application.

## Core Features
- **Real-time audio visualization** with frequency spectrum (default) or time-domain waveform display optimized for human voice
- **Multi-provider transcription support** including OpenAI (GPT-4o, Whisper), Deepgram (Nova-2/3), DeepInfra, and Groq
- **Noise gating and clipping detection** with automatic suppression and pause/resume support
- **dBFS-based volume metering** with configurable reference level for professional audio monitoring
- **Browsable transcription history** with clipboard copy functionality
- **Keyword management** for improved transcription accuracy with technical terms and names
- **Cross-platform floating window setup** for Hyprland/Omarchy and macOS (Hammerspoon)

## Quick Start Guide
1. Install via package manager:
   - macOS: `brew install kristoferlund/ostt/ostt`
   - Arch Linux: `yay -S ostt`
   - Other: `curl --proto '=https' --tlsv1.2 -LsSf https://github.com/kristoferlund/ostt/releases/latest/download/ostt-installer.sh | sh`
2. Install dependencies if using shell installer: `ffmpeg` (+ `wl-clipboard` for Wayland or `xclip` for X11 on Linux)
3. Configure your transcription provider: `ostt auth`
4. Select your preferred AI model and enter your API key
5. Start recording: `ostt record` (press Enter to transcribe, Esc to cancel)

## Use Cases
- Quick voice-to-text input from any application via floating popup window
- Transcribing meeting notes or voice memos with automatic history tracking
- Dictation for writers and content creators with keyword support for technical terms
- Accessibility tool for users who prefer voice input over typing
- Developer workflow enhancement on tiling window managers (Hyprland/Omarchy)

## Technical Details
- **Pricing Model**: Free and open source (MIT license); requires your own API keys for transcription providers
- **Platform Support**: Linux (all distributions), macOS; optimized for Hyprland/Omarchy and Hammerspoon integration
- **Integration Options**: Configurable global hotkey popup, clipboard integration, TOML configuration file
- **Data Export**: Transcription history stored locally, clipboard copy support, audio saved as compressed MP3

## Resources
- [Official Repository](https://github.com/kristoferlund/ostt)
- [Documentation (README)](https://github.com/kristoferlund/ostt#readme)
- [Releases & Changelog](https://github.com/kristoferlund/ostt/releases)
- [Hyprland Setup Guide](https://github.com/kristoferlund/ostt/blob/main/environments/hyprland/README.md)
- [macOS Setup Guide](https://github.com/kristoferlund/ostt/blob/main/environments/macOS/README.md)

## Notes & Considerations
Bring-your-own-API-key model means ongoing costs depend on chosen transcription provider pricing. API keys stored securely with 0600 permissions in `~/.local/share/ostt/credentials`. Configuration at `~/.config/ostt/ostt.toml`. Recommended sample rate of 16kHz for speech. Volume meter reference level may need tuning for specific audio hardware. Debug logging available via `RUST_LOG=debug ostt record`.
