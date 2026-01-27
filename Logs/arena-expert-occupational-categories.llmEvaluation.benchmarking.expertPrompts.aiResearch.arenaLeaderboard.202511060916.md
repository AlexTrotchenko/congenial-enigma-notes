---
title: Literature Note - Arena Expert and Occupational Categories
author: LMArena Team
date: 202511060916
tags: [llmEvaluation, benchmarking, expertPrompts, aiResearch, arenaLeaderboard, crowdsourcing]
source: https://news.lmarena.ai/arena-expert/
type: literature
---

# Key Takeaways from Arena Expert and Occupational Categories

## Summary
LMArena introduces two new evaluation frameworks: Arena Expert identifies the most challenging expert-level prompts (5.5% of all submissions) that reveal finer distinctions between top AI models, while Occupational Categories classify prompts across 23 professional fields to assess model performance by domain. These automated, continuously-updating systems demonstrate that crowdsourced data with LLM-based tagging can approximate the discriminative power of carefully curated benchmarks like OpenAI's GDPval while remaining scalable and fresh.

## Key Points
- Expert prompts constitute only 5.5% of all LMArena submissions but produce an 80-point score spread among top 30 models compared to 60 points on the overall leaderboard, indicating they capture finer-grained performance differences that general benchmarks miss
- The methodology uses zero-shot LLM prompting (DeepSeek-v3 for expert tagging, Gemini 2.5 Flash for occupational classification) to automatically identify prompts requiring advanced reasoning and domain expertise without human annotation at scale
- Occupational distribution shifts dramatically in expert prompts, with Mathematical and Engineering categories becoming more prominent while Software/IT remains dominant overall at 28% of all submissions
- Model rankings diverge significantly between standard and expert leaderboards, with Claude Opus 4.1, GPT-5 high, and Qwen 3 max showing large score improvements on expert prompts while GPT-4o experiences substantial decreases
- Arena Expert represents a refinement over the previous Arena Hard framework by being more selective (5.5% vs 33% of prompts) and focusing specifically on expert-level reasoning patterns rather than just difficulty criteria
- The system allows for reweighted "generalist" rankings that balance performance across occupational domains equally, revealing Gemini 2.5 Pro as the top generalist model followed by Claude Opus 4.1
- Strong alignment exists between LMArena Expert rankings and OpenAI's curated GDPval benchmark despite fundamentally different methodologies (automated crowdsourcing vs expert annotation), validating the scalability of LLM-based evaluation systems

## Questions
- How does the accuracy of automated LLM tagging for expertise and occupational categories compare to human expert judgment, and what biases might be introduced by using specific models like DeepSeek-v3 for classification?
- What explains the significant divergence in model performance between standard and expert prompts, and does this suggest that current training methods optimize for general competence rather than expert-level reasoning?
- As the proportion of expert prompts has remained stable over time despite growing user bases, does this indicate a consistent core of expert users, or are prompting patterns becoming more sophisticated across all user levels?
- How might the occupational category framework be used to identify model "specialists" that excel in narrow domains versus "generalists," and what training approaches would optimize for each?

## Source
[Original Article](https://news.lmarena.ai/arena-expert/)
