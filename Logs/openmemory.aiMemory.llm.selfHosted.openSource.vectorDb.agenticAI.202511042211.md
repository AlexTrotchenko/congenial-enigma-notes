---
title: Tool Note - OpenMemory
vendor: CaviraOSS
date: 202511042211
categories: [aiMemory, llm, selfHosted, openSource, vectorDb, agenticAI]
pricing: free
platforms: [linux, mac, windows, docker]
source: https://github.com/CaviraOSS/OpenMemory
documentation: https://github.com/CaviraOSS/OpenMemory#readme
type: tool
---

# OpenMemory - Self-Hosted AI Memory Engine for LLM Applications

## Overview
OpenMemory is an open-source, self-hosted AI memory engine that provides persistent, structured, and semantic memory for large language model applications. It implements a unique Hierarchical Memory Decomposition (HMD) architecture with multi-sector embeddings (episodic, semantic, procedural, emotional, reflective) that enables AI agents, assistants, and copilots to remember user data, preferences, and prior interactions with explainable recall paths. Unlike traditional vector databases or SaaS memory layers, OpenMemory offers 2-3× faster contextual recall and 6-10× lower cost while maintaining complete data ownership.

## Core Features
- **Hierarchical Memory Decomposition (HMD) Architecture**: Multi-sector embeddings with single-waypoint linking for biologically-inspired memory graphs
- **Multi-Sector Memory Types**: Supports episodic, semantic, procedural, emotional, and reflective memory categories
- **Framework Agnostic**: Works with any LLM framework including native LangGraph and Model Context Protocol (MCP) integration
- **Local & Hosted Embeddings**: Supports OpenAI, Gemini, Ollama, E5, and BGE embeddings with zero-cost local options
- **Explainable Recall Paths**: Transparent retrieval with composite similarity scoring (similarity + salience + recency + link weight)
- **Content Ingestion**: Built-in support for PDF, DOCX, TXT, audio files, and website content
- **High Performance**: 110-130ms query latency with 100k nodes, ~40 ops/s memory addition throughput
- **Complete Data Ownership**: 100% self-hosted with SQLite storage, no vendor lock-in
- **Privacy & Security**: Bearer authentication, AES-GCM encryption, PII scrubbing, and tenant isolation

## Quick Start Guide
1. **Prerequisites**: Install Node.js 20+, SQLite 3.40+ (optional: Ollama for local embeddings)
2. **Clone Repository**: `git clone https://github.com/caviraoss/openmemory.git`
3. **Configure Environment**: Copy `.env.example` to `.env` and set embedding provider (OpenAI/Gemini/Ollama)
4. **Install Dependencies**: `cd openmemory/backend && npm install`
5. **Start Server**: `npm run dev` or use Docker with `docker compose up --build -d`
6. **Test API**: Access OpenMemory at `http://localhost:8080` and add first memory via POST `/memory/add`
7. **Query Memories**: Use POST `/memory/query` to retrieve similar memories with contextual ranking

## Use Cases
- Long-term memory for AI agents and copilots that need to remember user preferences and context
- Enterprise AI assistants requiring persistent knowledge across conversations
- Personal AI journaling systems with emotional and reflective memory tracking
- Multi-user AI applications requiring tenant isolation and data privacy
- Educational AI platforms (like PageLM) needing semantic memory of learning materials
- Development tools requiring code context and procedural memory (LangGraph workflows)
- Research assistants maintaining episodic recall of documents and interactions

## Technical Details
- **Pricing Model**: Free and open-source (MIT License). Estimated $5-8/month for self-hosted deployment with 100k memories. Embedding costs: ~$0.30-0.40 per 1M tokens (hosted) or $0 with local models
- **Platform Support**: Cross-platform (Windows, Mac, Linux), Docker container available, Node.js 20+ required
- **Integration Options**: REST API, LangGraph mode (`/lgm/*` endpoints), Model Context Protocol (MCP) support for Claude Desktop and MCP-aware agents, pluggable vector backends (pgvector, Weaviate)
- **Data Export**: SQLite database with WAL mode, full memory deletion via API, tenant-based data isolation

## Resources
- [Official GitHub Repository](https://github.com/CaviraOSS/OpenMemory)
- [Documentation](https://github.com/CaviraOSS/OpenMemory#readme)
- [Discord Community](https://discord.gg/P7HaRayqTh)
- [Issue Tracker](https://github.com/CaviraOSS/OpenMemory/issues)
- [Contributing Guidelines](https://github.com/CaviraOSS/OpenMemory/blob/main/CONTRIBUTING.md)
- [Sister Project: PageLM](https://github.com/CaviraOSS/PageLM)

## Notes & Considerations
OpenMemory requires manual embedding provider configuration (OpenAI API key, Gemini API key, or local Ollama setup). The system uses SQLite by default which is excellent for single-node deployments but federated multi-node mode is planned for v1.4. Memory decay is controlled by `OM_DECAY_LAMBDA` parameter (default 0.02). The dashboard UI is currently in progress (v1.2). Performance benchmarks show 94-97% accuracy on LongMemEval compared to 58-85% for competitors like Zep. Consider local embedding models (Ollama/E5/BGE) to eliminate ongoing API costs. Bearer authentication is required for write operations in production deployments.
