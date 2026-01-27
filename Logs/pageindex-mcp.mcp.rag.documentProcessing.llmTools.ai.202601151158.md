---
title: Tool Note - PageIndex MCP
vendor: VectifyAI
date: 202601151158
categories: [mcp, rag, documentProcessing, llmTools, ai, pdfReader]
pricing: freemium
platforms: [web, windows, mac, linux]
source: https://pageindex.ai/mcp
documentation: https://docs.pageindex.ai
type: tool
---

# PageIndex MCP - Reasoning-Based Document Retrieval for LLMs

## Overview
PageIndex MCP is a vectorless, reasoning-based RAG (Retrieval-Augmented Generation) system that exposes document tree structures directly to LLMs via the Model Context Protocol. Unlike traditional vector-similarity approaches, it enables AI agents like Claude and Cursor to navigate and retrieve information through hierarchical reasoning—mimicking how humans use a book's index. Free tier includes 1,000 pages with unlimited conversations.

## Core Features
- Vectorless RAG using hierarchical tree structures instead of embeddings
- Multi-step reasoning and tree search for human-like document navigation
- Native MCP integration for Claude Desktop, Cursor, and other compatible agents
- Support for both local and online PDF documents
- No chunking required—preserves full document context and structure
- Transparent retrieval with traceable search paths and reasoning trajectories
- Automatic relevant passage retrieval without Top-K limitations

## Quick Start Guide
1. **Claude Desktop (Recommended)**: Download latest `.mcpb` file from [Releases](https://github.com/VectifyAI/pageindex-mcp/releases) and double-click to install
2. **Other MCP Clients (Local)**: Add to MCP config with `npx -y pageindex-mcp` command
3. **Direct HTTP Connection**: Use URL `https://chat.pageindex.ai/mcp` in MCP configuration
4. OAuth authentication handles automatically on first use
5. Upload PDF or provide URL to start chatting with documents

## Use Cases
- Chatting with long PDFs that exceed normal context limits
- Research document analysis and information extraction
- Legal document review and clause finding
- Technical documentation navigation
- Academic paper analysis and cross-referencing
- Any scenario requiring precise information retrieval from lengthy documents

## Technical Details
- **Pricing Model**: Free tier with 1,000 pages, unlimited conversations; premium tiers available
- **Platform Support**: Claude Desktop, Cursor, any MCP-compatible LLM client; requires Node.js ≥18.0.0 for local server
- **Integration Options**: MCP protocol, HTTP server endpoint, MCPB desktop extension, mcp-remote bridge
- **Data Export**: Reasoning trajectories and search paths are traceable

## Resources
- [Official Website](https://pageindex.ai/mcp)
- [Documentation](https://docs.pageindex.ai)
- [GitHub Repository](https://github.com/VectifyAI/pageindex-mcp)
- [Main PageIndex Repo](https://github.com/VectifyAI/PageIndex)
- [PageIndex Chat (Hosted)](https://chat.pageindex.ai)
- [Releases / Downloads](https://github.com/VectifyAI/pageindex-mcp/releases)

## Notes & Considerations
Local MCP server (Option 1) supports full PDF upload capabilities while direct HTTP connection (Option 2) only supports PDF processing via URLs. The `.mcpb` bundle format is recommended for new Claude Desktop installations, though legacy `.dxt` extensions continue to work. MIT licensed and open source. For clients that don't support HTTP MCP servers directly, use mcp-remote as a bridge.
