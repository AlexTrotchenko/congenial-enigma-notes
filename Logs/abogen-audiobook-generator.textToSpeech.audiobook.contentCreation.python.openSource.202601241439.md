---
title: Tool Note - Abogen
vendor: denizsafak (Deniz Safak)
date: 202601241439
categories: [textToSpeech, audiobook, contentCreation, python, openSource, multimedia]
pricing: free
platforms: [windows, mac, linux, docker, web]
source: https://github.com/denizsafak/abogen
documentation: https://github.com/denizsafak/abogen#readme
type: tool
---

# Abogen - Audiobook Generator with Synchronized Captions

## Overview
Abogen is a powerful text-to-speech conversion tool that transforms ePub, PDF, text, markdown, or subtitle files into high-quality audio with perfectly synchronized subtitles. Built on the Kokoro-82M model, it enables users to create audiobooks, voiceovers for social media content (Instagram, YouTube, TikTok), and any project requiring natural-sounding speech synthesis. The tool features both a GUI application and CLI interface with cross-platform support.

## Core Features
- **Multi-format input support**: Process ePub, PDF, TXT, MD, SRT, ASS, and VTT files with drag-and-drop functionality
- **Synchronized subtitle generation**: Multiple modes including line, sentence, word-level (1-3+ words), and sentence with highlighting
- **Voice mixer**: Create custom voices by blending different voice models with adjustable weights and saveable profiles
- **Queue/batch processing**: Add multiple files with individual settings for bulk conversion
- **Chapter support**: Automatic chapter detection from ePubs/PDFs with optional separate file output and M4B chapter markers
- **Multiple output formats**: WAV, FLAC, MP3, OPUS, and M4B with embedded metadata and cover art
- **Multi-language support**: American/British English, Spanish, French, Hindi, Italian, Japanese, Portuguese, and Mandarin Chinese
- **Adjustable speech rate**: Fine-tune speed from 0.1x to 2.0x

## Quick Start Guide
1. **Install espeak-ng** (required dependency):
   - Windows: Download and run the MSI from [espeak-ng releases](https://github.com/espeak-ng/espeak-ng/releases/latest)
   - Mac: `brew install espeak-ng`
   - Linux: `sudo apt install espeak-ng` (Ubuntu/Debian)
2. **Install Abogen** via pip:
   ```bash
   pip install abogen
   ```
   For Windows with NVIDIA GPU, first install PyTorch with CUDA:
   ```bash
   pip install torch==2.8.0+cu128 torchvision==0.23.0+cu128 torchaudio==2.8.0 --index-url https://download.pytorch.org/whl/cu128
   ```
3. **Launch the application**:
   ```bash
   abogen
   ```
4. **Convert your first file**: Drag and drop an ePub/PDF/text file, select voice and settings, click Start
5. **Optional**: Use `Pre-download models and voices` from menu for offline use

## Use Cases
- Creating audiobooks from ePub/PDF libraries for personal listening
- Generating voiceovers for YouTube videos, TikTok, and Instagram Reels
- Converting long-form articles and documents for audio consumption
- Producing accessible content for visually impaired users
- Creating podcast-style content from written scripts with timed narration
- Batch converting entire book series with consistent voice settings
- Educational content narration with synchronized subtitles for language learning

## Technical Details
- **Pricing Model**: Completely free and open-source under MIT license
- **Platform Support**: Windows (10/11), macOS (including Apple Silicon M1/M2), Linux (Ubuntu, Arch, Fedora); also available via Docker and web app
- **Integration Options**: CLI interface (`abogen-cli`), Python package on PyPI, Docker container, timestamps-based text files for precise timing control
- **Data Export**: Audio files (WAV, FLAC, MP3, OPUS, M4B), subtitle files (SRT, ASS), project folders with metadata
- **Hardware**: GPU acceleration via NVIDIA CUDA (Windows/Linux) or AMD ROCm (Linux only); CPU fallback available
- **Python Versions**: 3.10 to 3.12

## Resources
- [Official GitHub Repository](https://github.com/denizsafak/abogen)
- [PyPI Package](https://pypi.org/project/abogen/)
- [Demo Video & Guide](https://github.com/denizsafak/abogen/tree/main/demo)
- [Kokoro TTS Model](https://huggingface.co/hexgrad/Kokoro-82M)
- [Voice Samples](https://huggingface.co/hexgrad/Kokoro-82M/blob/main/SAMPLES.md)
- [Community Discussions](https://github.com/denizsafak/abogen/discussions)
- [Issue Tracker](https://github.com/denizsafak/abogen/issues)
- [Web App Fork](https://github.com/jeremiahsb/abogen) (by jeremiahsb)

## Notes & Considerations
- Word-level subtitle modes (1 word, 2 words, etc.) only work for English; other languages support sentence-level modes via duration-based fallback
- Japanese and Chinese language support requires additional dependencies (`pip install misaki[ja]` or `misaki[zh]`)
- First run downloads required models from HuggingFace (~1-2GB); use pre-download option for offline setup
- Processing speed varies by hardware: RTX 2060 Mobile processes ~3,000 characters in 11 seconds producing 3.5 minutes of audio
- The name "abogen" is a portmanteau of "audiobook generator" with no offensive intent (see FAQ for context)
- AMD GPU support requires Linux with ROCm; Windows AMD users must use CPU mode
- For best playback experience with subtitles, MPV player is recommended (supports subtitle display without video track)
