---
title: Tool Note - RLAMA
vendor: DonTizi
date: 202601111110
categories: [rag, localAi, documentProcessing, cli, ollama, openSource]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/DonTizi/rlama
documentation: https://rlama.dev/
type: tool
---

# RLAMA - Local RAG System for Private Document AI

## Overview
RLAMA is a powerful, open-source document AI question-answering tool that integrates with local Ollama models to create, manage, and query Retrieval-Augmented Generation (RAG) systems. It enables developers and teams to build private knowledge bases from documents and websites while keeping all data local, making it ideal for privacy-conscious applications and enterprise use cases requiring data sovereignty.

## Core Features
- **One-line RAG creation**: Simple CLI command to ingest folders and generate embeddings instantly (`rlama rag llama3 docs ./docs`)
- **Multiple document format support**: Handles .txt, .md, .pdf, .docx, .html, code files, and 30+ formats
- **Advanced chunking strategies**: Fixed, semantic, hierarchical, and hybrid chunking options for optimal retrieval
- **Web crawling capability**: Create RAG systems directly from websites with depth and path controls
- **HTTP API server**: RESTful endpoints for integrating RAG capabilities into other applications
- **Directory/website watching**: Automatic monitoring and updates when source content changes
- **Hugging Face integration**: Access 45,000+ GGUF models directly from Hugging Face Hub
- **OpenAI support**: Optional integration with OpenAI models (o3-mini, GPT-4o, etc.) for inference
- **Cross-platform binaries**: Single binary distribution for Windows, macOS, and Linux

## Quick Start Guide
1. **Install Ollama**: Download and install from https://ollama.ai/
2. **Install RLAMA**: Run `curl -fsSL https://raw.githubusercontent.com/dontizi/rlama/main/install.sh | sh`
3. **Pull embedding model**: `ollama pull bge-m3` (required for vector embeddings)
4. **Create your first RAG**: `rlama rag llama3 my-docs ./path/to/documents`
5. **Query your RAG**: `rlama run my-docs` then ask questions interactively
6. **Optional - Start API server**: `rlama api --port 11249` for HTTP access

## Use Cases
- Building private knowledge bases from internal documentation
- Creating chatbots for customer support using product docs
- Academic research with literature notes and papers
- Code documentation Q&A systems for development teams
- Enterprise document search without cloud dependencies
- Personal knowledge management with local privacy

## Technical Details
- **Pricing Model**: Completely free and open-source (Apache-2.0 license)
- **Platform Support**: Linux, macOS, Windows (single binary, no dependencies)
- **Integration Options**: HTTP REST API, CLI commands, Ollama API integration
- **Data Export**: Local filesystem storage in ~/.rlama (JSON format, fully portable)
- **Tech Stack**: Go (core), Cobra CLI framework, custom vector search implementation
- **Requirements**: Ollama running locally (default: localhost:11434)

## Resources
- [Official Website](https://rlama.dev/)
- [GitHub Repository](https://github.com/DonTizi/rlama)
- [Documentation Blog](https://rlama.dev/blog/building-local-rag-with-rlama)
- [Discord Community](https://discord.gg/tP5JB9DR)
- [YouTube Channel](https://www.youtube.com/@Dontizi)
- [Twitter/X](https://x.com/LeDonTizi)

## Notes & Considerations
- **Project Status**: Currently on pause (as of late 2025) due to maintainer's work/university commitments; development will resume when possible
- Requires Ollama to be installed and running before use
- Document embeddings are generated locally via Ollama, ensuring complete data privacy
- Context size can be adjusted (5-50+ chunks) based on query complexity and model context window limits
- For best text extraction from PDFs and complex formats, run `./scripts/install_deps.sh` to install optional dependencies (pdftotext, tesseract)
- Storage location can be customized via `--data-dir` flag or `RLAMA_DATA_DIR` environment variable
- Current version: v0.1.39 (1.1k GitHub stars, 74 forks)
