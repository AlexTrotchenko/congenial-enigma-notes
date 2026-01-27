---
title: Tool Note - Handy
vendor: cjpais (CJ Pais)
date: 202512081754
categories: [speechToText, accessibility, openSource, localFirst, transcription, productivity]
pricing: free
platforms: [windows, mac, linux]
source: https://handy.computer
documentation: https://github.com/cjpais/Handy
type: tool
---

# Handy - Offline Speech-to-Text That Respects Your Privacy

## Overview
Handy is a free, open source desktop application that provides completely offline speech-to-text transcription. Built with Tauri (Rust + React/TypeScript), it allows users to press a keyboard shortcut, speak, and have transcribed text pasted directly into any text field—all without sending voice data to the cloud. Designed to be "the most forkable" speech-to-text tool, it prioritizes privacy, simplicity, and extensibility.

## Core Features
- **100% Offline Operation**: All processing happens locally on your machine with no cloud dependency
- **Multiple AI Models**: Choose from Whisper (Small/Medium/Turbo/Large) with GPU acceleration or Parakeet V3 for CPU-optimized performance
- **Keyboard Shortcut Trigger**: Configurable shortcuts with push-to-talk or toggle modes
- **Voice Activity Detection**: Intelligent silence filtering using Silero VAD
- **Cross-Platform Support**: Works on Windows, macOS (Intel & Apple Silicon), and Linux
- **Direct Text Insertion**: Transcribed text automatically pastes into the active text field
- **Extensible Architecture**: Open source MIT license encourages forking and customization

## Quick Start Guide
1. Download the latest release from [handy.computer](https://handy.computer) or the [GitHub releases page](https://github.com/cjpais/Handy/releases)
2. Install the application following your platform's standard process
3. Launch Handy and grant required permissions (microphone access, accessibility permissions)
4. Open Settings and configure your preferred keyboard shortcut for recording
5. Select and download your preferred transcription model (Whisper or Parakeet)
6. Press your shortcut, speak, and release—your text appears automatically

## Use Cases
- **Accessibility Aid**: Voice typing for users who have difficulty with keyboards
- **Privacy-Focused Dictation**: Sensitive content transcription without cloud exposure
- **Rapid Note-Taking**: Capture thoughts quickly via voice in any application
- **Hands-Free Text Input**: Write emails, documents, or messages while multitasking
- **Developer Customization**: Fork and extend for specialized workflows or integrations

## Technical Details
- **Pricing Model**: Completely free and open source under MIT license
- **Platform Support**: macOS (Intel & Apple Silicon), Windows (x64), Linux (x64, Ubuntu 22.04/24.04)
- **System Requirements**: 
  - Whisper models: GPU recommended (Intel/AMD/NVIDIA) or M-series Mac
  - Parakeet V3: CPU-only, Intel Skylake (6th gen) or equivalent minimum
- **Integration Options**: Designed as extensible foundation; source code available for custom integrations
- **Data Export**: N/A (real-time transcription to clipboard/text fields)

## Resources
- [Official Website](https://handy.computer)
- [GitHub Repository](https://github.com/cjpais/Handy)
- [Build Instructions](https://github.com/cjpais/Handy/blob/main/BUILD.md)
- [Contributing Guide](https://github.com/cjpais/Handy/blob/main/CONTRIBUTING.md)
- [Discord Community](https://discord.com/invite/WVBeWsNXK4)
- [Issue Tracker](https://github.com/cjpais/Handy/issues)
- [Donations](https://handy.computer/donate)

## Notes & Considerations
- **Known Issues**: Whisper models may crash on certain Windows/Linux configurations; Wayland support on Linux is limited
- **Model Downloads**: Models download automatically on first use; manual installation available for restricted networks
- **Debug Mode**: Access via `Cmd+Shift+D` (macOS) or `Ctrl+Shift+D` (Windows/Linux) for troubleshooting
- **Performance**: Parakeet V3 offers ~5x real-time speed on mid-range CPUs with automatic language detection
- **Active Development**: Project is actively maintained with 22 contributors and 6.6k GitHub stars
- **Tech Stack**: Frontend is React + TypeScript + Tailwind CSS; Backend is Rust using whisper-rs, transcription-rs, cpal, vad-rs, and rdev libraries
