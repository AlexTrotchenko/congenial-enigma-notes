---
title: Tool Note - DiffMem
vendor: Growth Kinetics
date: 202411191526
categories: [aiAgents, memoryManagement, git, markdown, python, conversationalAI]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/Growth-Kinetics/DiffMem
documentation: https://github.com/Growth-Kinetics/DiffMem
type: tool
---

# DiffMem - Git-Based Memory Storage for Conversational AI Agents

## Overview
DiffMem is a lightweight, git-based memory backend designed for AI agents and conversational systems. It uses Markdown files for human-readable storage, Git for tracking temporal evolution through differentials, and an in-memory BM25 index for fast, explainable retrieval. This proof-of-concept explores how version control systems can serve as a foundation for efficient, scalable long-term memory in AI applications.

## Core Features
- **Current-State Focus**: Memory files store only the "now" view of information, reducing query surface area and keeping LLM contexts token-efficient
- **Differential Intelligence**: Git diffs and logs track how memories evolve over time without scanning entire histories
- **Multi-Depth Context Assembly**: Basic, wide, deep, and temporal context retrieval options for different use cases
- **BM25 Hybrid Search**: LLM-orchestrated search that distills queries and synthesizes responses
- **Writer Agent**: Analyzes transcripts, identifies/creates entities, stages atomic commits
- **Human-Readable Storage**: Plaintext Markdown ensures portability and tool-agnostic access

## Quick Start Guide
1. Clone the repository: `git clone https://github.com/alexmrval/DiffMem.git`
2. Install dependencies: `pip install -r requirements.txt`
3. Set environment variable: `export OPENROUTER_API_KEY=your_key`
4. Import and initialize DiffMemory:
   ```python
   from diffmem import DiffMemory
   memory = DiffMemory("/path/to/repo", "alex", "your-api-key")
   ```
5. Get context for a conversation: `context = memory.get_context(conversation, depth="deep")`
6. Process and commit new memory: `memory.process_and_commit_session("Had coffee with mom today...", "session-123")`
7. Run examples: `python examples/usage.py`

## Use Cases
- Long-horizon AI systems where memories accumulate over years
- Personal AI assistants requiring versioned knowledge bases
- Conversational agents needing temporal reasoning and memory evolution tracking
- Building self-reflective AI systems that can answer "how did I change?"
- Privacy-first personal AI applications with full data ownership

## Technical Details
- **Pricing Model**: Free and open-source (MIT License)
- **Platform Support**: Any platform supporting Python and Git (Windows, Mac, Linux)
- **Integration Options**: Importable Python modules with clean API layer, no servers required
- **Data Export**: Plain Markdown files with Git history, fully portable and human-readable
- **Dependencies**: gitpython, rank-bm25, sentence-transformers, OpenRouter API

## Resources
- [GitHub Repository](https://github.com/Growth-Kinetics/DiffMem)
- [Documentation](https://github.com/Growth-Kinetics/DiffMem)
- [Examples Directory](https://github.com/Growth-Kinetics/DiffMem/tree/main/examples)
- [Repository Guide](https://github.com/Growth-Kinetics/DiffMem/blob/main/repo_guide.md)

## Notes & Considerations
This is an early proof-of-concept—functional but not production-hardened. Known limitations include no automatic git sync (manual pulls/pushes required), basic error handling, index rebuilds on every initialization (needs caching for production), and no multi-user concurrency locks. The project is R&D from Growth Kinetics exploring differential memory for next-gen agents, and they welcome collaborations, PRs, and feedback. Future directions include agent-driven pruning, collaborative multi-agent memories, hybrid vector embedding stores, and integrations with tools like Obsidian.
