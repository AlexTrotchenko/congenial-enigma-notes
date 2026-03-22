---
title: Tool Note - WhisperLiveKit
vendor: QuentinFuxa
date: 202603221017
categories: [speechToText, realtime, diarization, whisper, selfHosted, openSource]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/QuentinFuxa/WhisperLiveKit
documentation: https://github.com/QuentinFuxa/WhisperLiveKit/tree/main/docs
type: tool
---

# WhisperLiveKit - Ultra-Low-Latency Self-Hosted Speech-to-Text

## Overview

WhisperLiveKit (WLK) provides ultra-low-latency, self-hosted speech-to-text with speaker identification. Built on SOTA 2025 simultaneous speech research (SimulWhisper, Streaming Sortformer), it handles real-time transcription properly — not just running Whisper on chunks, which produces poor results. Supports 100+ languages, translation to 200 languages via NLLB, speaker diarization, and multiple backends including Voxtral and MLX for Apple Silicon.

## Core Features

- **Ultra-low latency** — SimulStreaming with AlignAtt policy (SOTA 2025)
- **Speaker diarization** — Streaming Sortformer (SOTA 2025) or Diart
- **200+ language translation** — via NLLB (No Language Left Behind)
- **Multiple backends** — Faster-Whisper, MLX-Whisper, Voxtral, OpenAI API
- **Voice Activity Detection** — Silero VAD for efficiency
- **Multi-user support** — concurrent WebSocket connections
- **API compatibility** — OpenAI REST, Deepgram WebSocket, native WebSocket
- **Chrome extension** — capture audio from web pages
- **Subtitle generation** — SRT/VTT output
- **Apple Silicon native** — MLX backends for M1/M2/M3

## Quick Start Guide

**Install:**
```bash
pip install whisperlivekit
```

**Start server:**
```bash
# Start with auto-detected backend
wlk --model base --language en
# Open http://localhost:8000 and start talking

# Or quick-run with model pull
wlk run whisper:tiny
```

**Transcribe files:**
```bash
wlk transcribe meeting.wav
wlk transcribe --format srt podcast.mp3 -o podcast.srt
```

**Model management:**
```bash
wlk models          # See installed
wlk pull large-v3   # Download
wlk rm large-v3     # Delete
wlk bench           # Benchmark
```

**API usage:**
```bash
# OpenAI-compatible REST
curl http://localhost:8000/v1/audio/transcriptions -F file=@audio.wav

# Python SDK
client = OpenAI(base_url="http://localhost:8000/v1", api_key="unused")

# WebSocket (native or Deepgram-compatible)
ws://localhost:8000/asr
```

## Key Parameters

| Parameter | Description | Default |
|-----------|-------------|---------|
| `--model` | Whisper model (tiny/base/small/medium/large-v3) | small |
| `--language` | Source language (or `auto`) | auto |
| `--target-language` | Translate to (200 langs via NLLB) | None |
| `--diarization` | Enable speaker identification | False |
| `--backend` | ASR backend (mlx-whisper, faster-whisper, voxtral-mlx, etc.) | auto |
| `--backend-policy` | simulstreaming or localagreement | simulstreaming |

## Backends

| Backend | Platform | Notes |
|---------|----------|-------|
| `faster-whisper` | GPU/CPU | Default for most systems |
| `mlx-whisper` | Apple Silicon | Native M1/M2/M3 support |
| `voxtral-mlx` | Apple Silicon | Mistral's 4B speech model |
| `voxtral` | Linux/GPU | HuggingFace transformers |
| `openai-api` | Any | Use OpenAI's API |

## Use Cases

- **Real-time transcription** — meetings, lectures, interviews
- **Subtitle generation** — podcasts, videos
- **Voice assistants** — low-latency STT for AI agents
- **Call center** — speaker diarization for multi-party calls
- **Multilingual content** — transcribe + translate 200 languages
- **Browser capture** — Chrome extension for web audio

## Technical Details

- **Pricing Model:** Free and open-source
- **Platform Support:** Linux, macOS (Apple Silicon native), Windows
- **GPU Support:** CUDA 12.9, Apple Silicon MLX
- **Docker:** GPU and CPU images available
- **Research:** SimulWhisper (2024), Streaming Sortformer (2025), NLLB (2022)

## Resources

- [GitHub Repository](https://github.com/QuentinFuxa/WhisperLiveKit)
- [API Documentation](https://github.com/QuentinFuxa/WhisperLiveKit/blob/main/docs/API.md)
- [Troubleshooting Guide](https://github.com/QuentinFuxa/WhisperLiveKit/blob/main/docs/troubleshooting.md)
- [Supported Languages](https://github.com/QuentinFuxa/WhisperLiveKit/blob/main/docs/supported_languages.md)
- [Chrome Extension](https://github.com/QuentinFuxa/WhisperLiveKit/tree/main/chrome-extension)
- [PyPI Package](https://pypi.org/project/whisperlivekit/)

## Notes & Considerations

Why not just run Whisper on chunks? Whisper is designed for complete utterances — processing small segments loses context, cuts words mid-syllable, and produces poor transcription. WLK uses intelligent buffering and incremental processing from simultaneous speech research. For diarization with Diart, you need to accept pyannote model conditions on HuggingFace. Voxtral-HF and diarization-sortformer are incompatible extras (require separate environments). Production deployment: use gunicorn with uvicorn workers + nginx for WebSocket proxying.
