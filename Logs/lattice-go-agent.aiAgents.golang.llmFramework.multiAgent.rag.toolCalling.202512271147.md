---
title: Tool Note - Lattice (go-agent)
vendor: Protocol-Lattice
date: 202512271147
categories: [aiAgents, golang, llmFramework, multiAgent, rag, toolCalling]
pricing: free
platforms: [linux, mac, windows]
source: https://github.com/Protocol-Lattice/go-agent
documentation: https://pkg.go.dev/github.com/Protocol-Lattice/go-agent
type: tool
---

# Lattice (go-agent) - Production-Ready AI Agent Framework for Go

## Overview
Lattice is a comprehensive AI agent framework for Go that provides clean abstractions for LLMs, tool calling, retrieval-augmented memory, and multi-agent coordination. Built for production environments, it offers pluggable LLM providers, sophisticated memory systems with RAG capabilities, and first-class UTCP (Universal Tool Calling Protocol) support. The framework enables developers to focus on domain logic while handling orchestration complexity.

## Core Features
- **Modular Architecture** – Compose agents from reusable modules with declarative configuration and shared catalog systems
- **Multi-Agent Orchestration** – Coordinate specialist agents through delegation, shared spaces, and hierarchical architectures where agents can be exposed as tools to other agents
- **RAG-Powered Memory** – Sophisticated memory engine with importance scoring, MMR (Maximal Marginal Relevance) retrieval, automatic pruning, and multiple backends (In-memory, PostgreSQL+pgvector, MongoDB, Neo4j, Qdrant)
- **Model Agnostic** – Adapters for Gemini, Anthropic, Ollama, or custom providers with hot-swapping support
- **UTCP Native** – First-class Universal Tool Calling Protocol support enabling cross-language and cross-platform agent orchestration
- **High Performance** – 10-50x faster MIME normalization, 40-60% fewer allocations, LRU caching with 184 ns/op, and concurrent worker pools
- **State Persistence** – Checkpoint and restore agent state including memory, conversation history, and shared space memberships
- **TOON Integration** – Token-Oriented Object Notation reduces LLM token consumption by 40-60% for structured data

## Quick Start Guide
1. Clone the repository: `git clone https://github.com/Protocol-Lattice/go-agent.git && cd lattice-agent`
2. Install dependencies: `go mod download`
3. Set environment variables: `export GOOGLE_API_KEY="your-api-key"` (for Gemini models)
4. Run the quickstart example: `go run cmd/quickstart/main.go`
5. Explore interactive demo: `go run cmd/demo/main.go`
6. Try multi-agent coordination: `go run cmd/team/main.go`

## Use Cases
- Building production AI agent systems with sophisticated memory and context management
- Multi-agent workflows with specialist coordination (researcher, coder, reviewer patterns)
- RAG-powered conversational systems requiring persistent memory across sessions
- UTCP-compliant tool ecosystems enabling cross-language agent communication
- Complex agentic workflows with state persistence and checkpoint/restore capabilities
- Token-optimized LLM applications using TOON for cost reduction

## Technical Details
- **Pricing Model**: Free and open source under Apache 2.0 license
- **Platform Support**: Any platform supporting Go 1.22+ (Go 1.25 recommended); requires PostgreSQL 15+ with pgvector extension for persistent memory (optional)
- **Integration Options**: Native adapters for Gemini, Anthropic, Ollama; UTCP protocol for cross-language interop; supports PostgreSQL+pgvector, MongoDB, Neo4j, Qdrant as vector backends
- **Data Export**: Agent state serializable via Checkpoint/Restore; memory stored in configurable backends; standard Go module structure

## Resources
- [Official Repository](https://github.com/Protocol-Lattice/go-agent)
- [Go Package Documentation](https://pkg.go.dev/github.com/Protocol-Lattice/go-agent)
- [DeepWiki Documentation](https://deepwiki.com/Protocol-Lattice/go-agent)
- [Examples Directory](https://github.com/Protocol-Lattice/go-agent/tree/main/cmd)
- [Performance Benchmarks](https://github.com/Protocol-Lattice/go-agent/blob/main/PERFORMANCE_SUMMARY.md)
- [GitHub Discussions](https://github.com/Protocol-Lattice/go-agent/discussions)
- [TOON Specification](https://github.com/toon-format/spec/blob/main/SPEC.md)

## Notes & Considerations
Lattice requires Go 1.22 or higher with 1.25 recommended for optimal performance. For persistent vector memory, PostgreSQL 15+ with the pgvector extension must be installed (`CREATE EXTENSION IF NOT EXISTS vector;`). The framework is inspired by Google's Agent Development Kit (Python) but rebuilt natively for Go. Tool names must be unique within a catalog. The TOON format provides significant token savings (40-60%) but adds a learning curve for teams unfamiliar with the notation. Agent-as-tool patterns enable powerful hierarchical architectures but require careful session isolation management to prevent context pollution.
