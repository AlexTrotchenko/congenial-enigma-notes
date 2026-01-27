---
title: Tool Note - GLM-ASR-Nano
vendor: Zhipu AI (zai-org)
date: 202512122210
categories: [speechRecognition, asr, openSource, llm, deepLearning, chineseNlp]
pricing: free
platforms: [linux, windows, mac]
source: https://github.com/zai-org/GLM-ASR
documentation: https://github.com/zai-org/GLM-ASR#readme
type: tool
---

# GLM-ASR-Nano - Robust Open-Source Speech Recognition for Dialects and Low-Volume Audio

## Overview
GLM-ASR-Nano-2512 is a 1.5B parameter open-source speech recognition model developed by Zhipu AI that outperforms OpenAI Whisper V3 on multiple benchmarks. It excels at recognizing Chinese dialects (especially Cantonese) and low-volume/whispered speech that traditional ASR models struggle with, achieving the lowest average error rate (4.10) among comparable open-source models.

## Core Features
- **Exceptional Dialect Support**: Highly optimized for Cantonese (粤语) and other Chinese dialects beyond standard Mandarin and English
- **Low-Volume Speech Robustness**: Specifically trained for "Whisper/Quiet Speech" scenarios, capturing extremely low-volume audio that other models miss
- **SOTA Performance**: Achieves lowest average error rate (4.10) among open-source models, excelling on Chinese benchmarks (Wenet Meeting, Aishell-1)
- **Compact Size**: Delivers superior performance with only 1.5B parameters
- **Easy Integration**: Compatible with Hugging Face transformers library with planned support for vLLM and SGLang
- **Noise Robustness**: Performs well in real-world meeting scenarios with noise and overlapping speech

## Quick Start Guide
1. Clone the repository: `git clone https://github.com/zai-org/GLM-ASR.git && cd GLM-ASR`
2. Install dependencies: `pip install -r requirements.txt`
3. Install ffmpeg: `sudo apt install ffmpeg` (Linux) or equivalent for your OS
4. Run inference on English audio: `python inference.py --checkpoint_dir zai-org/GLM-ASR-Nano-2512 --audio examples/example_en.wav`
5. Run inference on Chinese audio: `python inference.py --checkpoint_dir zai-org/GLM-ASR-Nano-2512 --audio examples/example_zh.wav`

## Use Cases
- Transcribing Chinese dialect audio (Cantonese, regional dialects)
- Meeting transcription with noisy/overlapping speech
- Processing low-volume or whispered speech recordings
- Multilingual transcription (Mandarin and English)
- Building voice-enabled applications requiring robust ASR
- Accessibility tools for quiet speakers

## Technical Details
- **Pricing Model**: Free and open-source under Apache-2.0 license
- **Platform Support**: Python-based, requires ffmpeg; runs on Linux, Windows, macOS with GPU recommended
- **Integration Options**: Hugging Face transformers library; upcoming support for transformers 5.x, vLLM, SGLang
- **Model Size**: 1.5B parameters
- **Data Export**: Direct text transcription output

## Resources
- [Official GitHub Repository](https://github.com/zai-org/GLM-ASR)
- [Documentation (README)](https://github.com/zai-org/GLM-ASR#readme)
- [中文文档 (Chinese README)](https://github.com/zai-org/GLM-ASR/blob/main/README_zh.md)
- [Hugging Face Model](https://huggingface.co/zai-org/GLM-ASR-Nano-2512)
- [AutoGLM Demo](https://autoglm.zhipuai.cn/autotyper)
- [WeChat Community](https://github.com/zai-org/GLM-ASR/blob/main/resources/WECHAT.md)

## Notes & Considerations
The model is optimized specifically for Chinese dialects and low-volume audio scenarios where other ASR models underperform. Benchmark comparisons show particular strength on Wenet Meeting (real-world meeting audio) and Aishell-1 (standard Mandarin) datasets. Requires ffmpeg as a system dependency. GPU is recommended for inference performance. Model weights are hosted on Hugging Face and will be automatically downloaded on first use.
