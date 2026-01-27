---
title: Literature Note - We Got Claude to Fine-Tune an Open Source LLM
author: ben burtenshaw, shaun smith
date: 202512050736
tags: [llmFineTuning, codingAgents, huggingFace, cloudTraining, openSource, machineLearning]
source: https://huggingface.co/blog/hf-skills-training
type: literature
---

# Key Takeaways from We Got Claude to Fine-Tune an Open Source LLM

## Summary
Hugging Face Skills is a new tool that enables AI coding agents like Claude Code, OpenAI Codex, and Gemini CLI to autonomously handle the complete fine-tuning workflow for language models—from dataset validation and hardware selection to job submission and training monitoring. This approach democratizes model customization by transforming what was previously a specialized ML engineering skill into a conversational interaction, while still supporting production-grade methods including SFT, DPO, and GRPO for models ranging from 0.5B to 70B parameters.

## Key Points
- Hugging Face Skills packages domain knowledge, scripts, and instructions that teach coding agents how to make informed decisions about GPU selection, LoRA configuration, authentication, and training parameters
- The complete training lifecycle is automated: dataset validation, hardware selection, script generation, cloud GPU job submission, real-time progress monitoring via Trackio, and model deployment to the Hub
- Three production-ready training methods are supported: Supervised Fine-Tuning (SFT) for demonstration data, Direct Preference Optimization (DPO) for preference alignment, and Group Relative Policy Optimization (GRPO) for verifiable tasks like math and coding
- Hardware costs scale with model size—tiny models under 1B can train for $1-2 on T4 GPUs, while 3-7B models require A10G/A100 with LoRA at $15-40
- LoRA adapters are automatically applied for models larger than 3B parameters, making single-GPU training feasible while preserving quality
- Trained models can be converted to GGUF format for local deployment with llama.cpp, Ollama, and LM Studio

## Questions
- What are the quality and performance tradeoffs between this automated conversational approach versus manual fine-tuning by experienced ML engineers?
- How does the skill system handle complex edge cases where dataset formats require non-trivial transformations or domain-specific preprocessing?
- Can the skill framework be extended to support custom training workflows, novel optimization techniques, or multi-node distributed training scenarios?
- What safeguards exist to prevent costly training runs when agents misinterpret ambiguous user instructions?

## Source
[Original Article](https://huggingface.co/blog/hf-skills-training)
