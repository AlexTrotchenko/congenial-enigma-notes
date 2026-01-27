---
title: Literature Note - GPT-5.1-Codex-Max Prompting Guide
author: Noah MacCallum (OpenAI)
date: 202512060948
tags: [promptEngineering, codingAgents, aiDevelopment, toolUse, llmOptimization, agenticCoding]
source: https://cookbook.openai.com/examples/gpt-5/gpt-5-1-codex-max_prompting_guide
type: literature
---

# Key Takeaways from GPT-5.1-Codex-Max Prompting Guide

## Summary
This guide details optimal prompting strategies and tool configurations for OpenAI's GPT-5.1-Codex-Max, their most capable agentic coding model. The key innovations include first-class compaction support for extended multi-hour reasoning sessions, significant token efficiency improvements (~30% fewer thinking tokens), and specific tooling best practices that leverage the model's post-training optimizations.

## Key Points
- The model achieves equivalent performance to GPT-5.1-Codex while using approximately 30% fewer thinking tokens, with "medium" reasoning effort recommended for interactive coding
- First-class compaction via the Responses API enables multi-hour autonomous coding sessions without context window degradation, replacing ad-hoc conversation summarization
- Prompts should emphasize autonomy and "bias-to-action"—explicitly removing instructions for upfront plans or status updates, which can cause premature termination
- The model is specifically trained on `apply_patch`, `shell_command`, and `update_plan` tools; using the exact implementations yields best performance
- Parallel tool calling requires explicit batching instructions using `multi_tool_use.parallel`, with a workflow of plan-batch-analyze-repeat
- Tool responses should be truncated to 10k tokens with middle-truncation strategy (half beginning, half end) to stay in-distribution
- AGENTS.md files provide hierarchical, directory-specific instructions injected as user-role messages in root-to-leaf order

## Questions
- How does the encrypted compaction mechanism preserve critical context compared to traditional summarization approaches?
- What specific prompt engineering is needed to make custom semantic search tools perform comparably to native tools?
- How should developers handle the tradeoff between "medium" and "high/xhigh" reasoning effort for different task complexities?
- What patterns cause the model to "stop abruptly before rollout is complete" and how can they be systematically avoided?

## Source
[Original Article](https://cookbook.openai.com/examples/gpt-5/gpt-5-1-codex-max_prompting_guide)
