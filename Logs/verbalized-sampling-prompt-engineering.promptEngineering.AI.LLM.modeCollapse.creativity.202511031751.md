---
title: Literature Note - Verbalized Sampling in Prompt Engineering
author: Jiayi Zhang, Simon Yu, Derek Chong, et al. (Stanford/Northeastern/WVU)
date: 202511031751
tags: [promptEngineering, AI, LLM, modeCollapse, creativity, diversity]
source: https://arxiv.org/abs/2510.01171
type: literature
---

# Key Takeaways from Verbalized Sampling in Prompt Engineering

## Summary
Verbalized Sampling is a training-free prompting technique that addresses mode collapse in aligned language models by asking them to generate multiple responses with explicit probabilities rather than a single answer. This simple approach recovers 66-68% of the model's original diversity while maintaining quality and safety, achieving 1.6-2.1× improvement in creative output diversity. The method reveals that alignment training doesn't destroy model creativity—it merely biases models toward safe, typical responses that can be bypassed through strategic prompting.

## Key Points
- Mode collapse occurs when alignment training (like RLHF) causes models to favor narrow, repetitive responses over their full capability spectrum, driven by human raters' preference for familiar, "typical" answers in training data
- The core technique reformulates prompts from requesting single responses (e.g., "tell me a joke") to requesting distributions (e.g., "generate 5 responses with their probabilities"), which reframes the task from "pick the most typical" to "surface the distribution"
- Implementation is remarkably simple: add instructions like "Generate 5 responses to the user query, each within a separate <response> tag. Each <response> must include a <text> and a numeric <probability>. Please sample at random from the tails of the distribution"
- Results show substantial improvements across multiple domains: creative writing (poems, stories, jokes), dialogue simulation, open-ended Q&A, and synthetic data generation—all without retraining or changing model parameters
- The method scales better with larger models, with GPT-4, Claude 4, and Gemini 2.5 showing stronger diversity gains (~2-3×) compared to smaller models, suggesting larger models have more "trapped" diversity to unlock
- Users can tune creativity levels by adjusting probability thresholds in prompts (lower thresholds = higher diversity), creating a "creativity dial" that works purely through prompt engineering
- The technique is model-agnostic and orthogonal to existing sampling parameters like temperature, working with any major LLM (GPT, Claude, Gemini, Llama) through the API or chat interface without special access

## Questions
- If verbalized sampling reveals that alignment hasn't destroyed diversity but merely hidden it, what does this imply about other assumed limitations or "safety constraints" in current AI systems?
- How might verbalized sampling interact with or complement other decoding strategies like temperature, top-p, or beam search—could combining approaches yield even greater benefits?
- What are the computational costs of generating multiple responses with probabilities versus single responses, and at what scale does this become prohibitive for production systems?
- Could adversarial actors exploit verbalized sampling to bypass safety alignments more easily, or does the technique maintain the same safety properties as standard prompting?

## Source
[Original Research Paper - arXiv](https://arxiv.org/abs/2510.01171)
[GitHub Implementation](https://github.com/CHATS-lab/verbalized-sampling)
[Forbes Article Reference](https://www.forbes.com/sites/lanceeliot/2025/11/01/prompt-engineering-newest-technique-is-verbalized-sampling-that-stirs-ai-to-be-free-thinking-and-improve-your-responses/)
