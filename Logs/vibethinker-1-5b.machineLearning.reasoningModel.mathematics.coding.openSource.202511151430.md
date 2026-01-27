---
title: Tool Note - VibeThinker-1.5B
vendor: WeiboAI
date: 202511151430
categories: [machineLearning, reasoningModel, mathematics, coding, openSource, languageModel]
pricing: free
platforms: [linux, windows, mac]
source: https://github.com/WeiboAI/VibeThinker
documentation: https://github.com/WeiboAI/VibeThinker/blob/main/README.md
type: tool
---

# VibeThinker-1.5B - Ultra-Efficient Reasoning Language Model

## Overview
VibeThinker-1.5B is a 1.5-billion parameter dense reasoning model that challenges the notion that small models lack robust reasoning capabilities. Developed by WeiboAI using the innovative "Spectrum-to-Signal Principle (SSP)" methodology, it achieves state-of-the-art performance on mathematical and coding benchmarks while being 100-600× smaller than competing models like DeepSeek R1 (671B) and Kimi K2 (1000B+). Remarkably, it surpasses the initial DeepSeek R1 model across three challenging mathematical benchmarks despite being over 400 times smaller.

## Core Features
- **Ultra-compact architecture** - Only 1.5B parameters yet outperforms models 100-600× larger on reasoning tasks
- **Superior mathematical reasoning** - Surpasses DeepSeek R1 on AIME24 (80.3 vs 79.8), AIME25 (74.4 vs 70.0), and HMMT25 (50.4 vs 41.7)
- **Spectrum-to-Signal Principle (SSP)** - Novel post-training methodology with Two-Stage Diversity-Exploring Distillation and MaxEnt-Guided Policy Optimization (MGPO)
- **Exceptional cost-efficiency** - Post-training cost of only $7,800 compared to $294K-$535K for comparable models (30-60× reduction)
- **Strong coding capabilities** - Performs well on LiveCodeBench and competitive programming tasks
- **MIT licensed** - Fully open source with model weights available on Hugging Face and ModelScope

## Quick Start Guide
1. Install required dependencies: `transformers>=4.54.0` (recommended: `vLLM==0.10.1` or `SGLang>=0.4.9.post6`)
2. Download model from Hugging Face: `WeiboAI/VibeThinker-1.5B`
3. Load model using AutoModelForCausalLM with bfloat16 precision
4. Configure generation parameters: temperature=0.6 or 1.0, max_tokens=40960, top_p=0.95, top_k=-1
5. Apply chat template to format input prompts
6. Generate responses using the model.generate() method with specified config
7. For production use, deploy with vLLM or SGLang for optimal inference performance

## Use Cases
- Solving competitive mathematics problems (AIME, HMMT level)
- Mathematical reasoning and proof generation
- Coding challenges and competitive programming
- Research on efficient reasoning models and knowledge distillation
- Educational tools for mathematics and computer science
- Cost-sensitive AI applications requiring strong reasoning capabilities
- Benchmarking small language model reasoning abilities

## Technical Details
- **Pricing Model**: Free and open source under MIT License
- **Platform Support**: Any system supporting PyTorch and Transformers (Linux, Windows, macOS); GPU recommended for inference
- **Integration Options**: Compatible with Hugging Face Transformers, vLLM, SGLang; standard transformer API
- **Data Export**: Model weights in standard PyTorch/Safetensors format; fully portable
- **Model Size**: 1.5B parameters (approximately 3GB in bfloat16)
- **Recommended Settings**: Temperature 0.6-1.0, max tokens 40960, top_p 0.95, top_k -1 for best results

## Resources
- [Official GitHub Repository](https://github.com/WeiboAI/VibeThinker)
- [Hugging Face Model Hub](https://huggingface.co/WeiboAI/VibeThinker-1.5B)
- [ModelScope Repository](https://modelscope.cn/models/WeiboAI/VibeThinker-1.5B)
- [Technical Report](https://huggingface.co/papers/2511.06221)
- [ArXiv Paper](https://arxiv.org/abs/2511.06221)
- [Math Evaluation Guide](https://github.com/WeiboAI/VibeThinker/blob/main/eval/math/README.md)
- [Code Evaluation Guide](https://github.com/WeiboAI/VibeThinker/blob/main/eval/code/README.md)
- [Sample Responses](https://drive.google.com/drive/folders/1qom754QSjujDI98Wv8LIKTaTszPkAN6q)

## Notes & Considerations
Primary use case is competitive-style math and coding problems. Model is optimized for reasoning tasks and may not perform as well on general language tasks compared to similarly-sized general-purpose models. Requires transformers>=4.54.0 and benefits significantly from vLLM or SGLang for production deployment. The model uses a specific chat template format that should be applied for best results. For reproducible evaluation, use the provided benchmark scripts in the eval directory. Training methodology emphasizes diversity in outputs during SFT phase followed by reinforcement learning to amplify correct signals, making it particularly effective for problems with verifiable solutions.
