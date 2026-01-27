---
title: Tool Note - Qwen Audiobook Converter
vendor: WhiskeyCoder
date: 202601251115
categories: [textToSpeech, voiceCloning, audiobook, python, ai, localFirst]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/WhiskeyCoder/Qwen3-Audiobook-Converter
documentation: https://github.com/WhiskeyCoder/Qwen3-Audiobook-Converter/blob/main/README.md
type: tool
---

# Qwen Audiobook Converter - Convert Documents to High-Quality Audiobooks with AI Voice Synthesis

## Overview
Qwen Audiobook Converter is an open-source Python tool that transforms PDFs, EPUBs, DOCX, DOC, and TXT files into high-quality audiobooks using the Qwen3 TTS Voice Model. It supports both pre-built voice speakers and custom voice cloning from reference audio samples, making it ideal for authors, content creators, and anyone wanting to convert written content into spoken word format locally.

## Core Features
- **Dual Voice Modes**: Choose between pre-built speakers (Ryan, Serena, Aiden, etc.) or clone any voice from a reference audio sample with automatic transcription
- **Multi-Format Document Support**: Process TXT, PDF, EPUB, DOCX, and legacy DOC files seamlessly
- **1.7B Model Quality**: Always uses the highest quality Qwen model for best audio output
- **Smart Text Chunking**: Intelligent splitting with sentence boundary detection (~1200 words per chunk)
- **Intelligent Caching System**: Avoids re-processing identical chunks for faster subsequent runs
- **Robust Error Handling**: Automatic retries (3 attempts) and graceful failure recovery with auto-cleanup

## Quick Start Guide
1. **Install Prerequisites**: Ensure Python 3.8+ and FFmpeg are installed on your system
2. **Clone the Repository**: `git clone https://github.com/WhiskeyCoder/Qwen3-Audiobook-Converter.git && cd Qwen3-Audiobook-Converter`
3. **Install Dependencies**: `pip install -r requirements.txt`
4. **Start Qwen Voice Model**: Run Qwen3 TTS Gradio interface locally (one-click install available via Pinokio) at `http://127.0.0.1:7860`
5. **Add Your Book**: Place document files in the `book_to_convert/` folder
6. **Run Conversion**: Execute `python audiobook_converter.py` for default voice or add `--voice-clone --voice-sample path/to/reference.wav` for voice cloning

## Use Cases
- Converting ebooks and PDFs into audiobooks for personal listening
- Creating audiobook versions of self-published or indie author content
- Generating audio narration from documentation or reports
- Producing voice-cloned readings using a specific narrator's voice sample
- Batch processing multiple documents into audiobook format
- Accessibility conversion for visually impaired users

## Technical Details
- **Pricing Model**: Completely free and open-source under MIT License
- **Platform Support**: Windows, macOS, Linux (requires Python 3.8+, FFmpeg, and local Qwen3 TTS Gradio server)
- **Integration Options**: Command-line interface, works with local Qwen Gradio API at port 7860
- **Data Export**: Output as MP3 files (128kbps default, configurable to 192k/256k), stored in `audiobooks/` folder

## Resources
- [Official Repository](https://github.com/WhiskeyCoder/Qwen3-Audiobook-Converter)
- [README Documentation](https://github.com/WhiskeyCoder/Qwen3-Audiobook-Converter/blob/main/README.md)
- [Quick Start Guide](https://github.com/WhiskeyCoder/Qwen3-Audiobook-Converter/blob/main/QUICKSTART.md)
- [Qwen3 TTS Model](https://github.com/QwenLM/Qwen3-TTS)
- [Issues & Support](https://github.com/WhiskeyCoder/Qwen3-Audiobook-Converter/issues)

## Notes & Considerations
Processing is intentionally sequential (1 worker) to avoid rate limiting, with each chunk taking approximately 4-5 minutes using the 1.7B model. System requires ~4GB RAM and approximately 100MB storage per hour of audiobook output. Voice cloning requires WAV format reference audio files with automatic transcription via Qwen's Whisper model. Image-based PDFs require prior OCR processing as the tool extracts text only. Temporary chunk files are automatically cleaned up even on failure. Available speakers include Ryan, Serena, Aiden, Dylan, Eric, and several accent-specific options (Japanese, Korean, Chinese).
