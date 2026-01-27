---
title: Tool Note - Chaplin
vendor: Amanvir Parhar
date: 202601052205
categories: [speechRecognition, accessibility, machineLearning, localFirst, lipReading, vsr]
pricing: free
platforms: [mac, windows, linux]
source: https://github.com/amanvirparhar/chaplin
documentation: https://github.com/amanvirparhar/chaplin?tab=readme-ov-file
type: tool
---

# Chaplin - Real-Time Silent Speech Recognition

## Overview
Chaplin is a visual speech recognition (VSR) tool that reads your lips in real-time and types whatever you silently mouth. It runs fully locally with no cloud dependencies, using the Auto-AVSR model trained on the LRS3 dataset combined with LLM-based text correction via Ollama. Ideal for silent communication scenarios where voice input isn't practical or desired.

## Core Features
- Real-time lip reading using visual speech recognition trained on the LRS3 dataset
- Fully local processing with no cloud dependencies for complete privacy
- LLM-powered text correction using Ollama with qwen3:4b model to improve accuracy
- Automatic typing at cursor position after recognition completes
- MediaPipe-based face detection for robust lip tracking
- Simple hotkey-based recording toggle (Option/Alt key)

## Quick Start Guide
1. Clone the repository: `git clone https://github.com/amanvirparhar/chaplin && cd chaplin`
2. Run the setup script: `./setup.sh` (downloads model files from Hugging Face Hub)
3. Install and run Ollama, then pull the model: `ollama pull qwen3:4b`
4. Install uv package manager from https://github.com/astral-sh/uv
5. Run the application: `uv run --with-requirements requirements.txt --python 3.12 main.py config_filename=./configs/LRS3_V_WER19.1.ini detector=mediapipe`
6. Press Option (Mac) or Alt (Windows/Linux) to start/stop recording, mouth words, and watch text appear at cursor

## Use Cases
- Silent dictation in quiet environments like libraries or open offices
- Accessibility tool for individuals who cannot vocalize
- Private text input in public spaces without others hearing
- Communication when voice is unavailable (laryngitis, voice strain)
- Hands-free typing when audio-based speech recognition isn't suitable

## Technical Details
- **Pricing Model**: Free and open source under MIT license
- **Platform Support**: macOS, Windows, Linux (requires Python 3.12, webcam access)
- **Integration Options**: Types directly at cursor position in any application
- **Data Export**: Raw VSR output logged to terminal; corrected text typed at cursor
- **Dependencies**: uv, Ollama, MediaPipe, ESPnet, Hydra, Auto-AVSR model weights

## Resources
- [Official Repository](https://github.com/amanvirparhar/chaplin)
- [Demo Video](https://youtu.be/qlHi0As2alQ)
- [Auto-AVSR Project](https://github.com/mpc001/auto_avsr)
- [Visual Speech Recognition Models](https://github.com/mpc001/Visual_Speech_Recognition_for_Multiple_Languages?tab=readme-ov-file#autoavsr-models)
- [LRS3 Dataset Info](https://mmai.io/datasets/lip_reading/)
- [uv Package Manager](https://github.com/astral-sh/uv)
- [Ollama](https://ollama.com)

## Notes & Considerations
Requires good lighting and clear camera view of lips for optimal accuracy. The LLM correction step (qwen3:4b) significantly improves raw VSR output but adds slight latency. Model files are downloaded from Hugging Face Hub during setup and may take significant disk space. Performance depends on webcam quality and consistent face positioning. Currently English-only based on the LRS3 training dataset.
