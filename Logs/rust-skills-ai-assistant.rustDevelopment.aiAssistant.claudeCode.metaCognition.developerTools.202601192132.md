---
title: Tool Note - Rust Skills
vendor: ZhangHanDong
date: 202601192132
categories: [rustDevelopment, aiAssistant, claudeCode, metaCognition, developerTools, codeQuality]
pricing: free
platforms: [linux, mac, windows]
source: https://github.com/ZhangHanDong/rust-skills
documentation: https://github.com/ZhangHanDong/rust-skills/tree/main/docs
type: tool
---

# Rust Skills - Meta-Cognition AI Assistant for Rust Development

## Overview
Rust Skills is a Claude Code plugin that transforms AI assistance for Rust development by implementing a three-layer meta-cognition framework (Domain → Design → Mechanics). Instead of providing surface-level fixes like "use .clone()", it traces through cognitive layers to deliver domain-correct architectural solutions. The tool is designed for Rust developers who want AI that understands the *why* behind code patterns, not just the *how*.

## Core Features
- **Meta-Cognition Framework**: Three-layer cognitive model that traces from domain constraints (WHY) through design choices (WHAT) to language mechanics (HOW)
- **Real-time Information Agents**: Background agents fetch latest Rust versions, crate information, and API documentation on demand
- **Dynamic Skill Generation**: Auto-generates context-aware skills from your Cargo.toml dependencies stored in `~/.claude/skills/`
- **Domain-Specific Extensions**: Pre-built knowledge modules for FinTech, ML, Cloud-Native, IoT, Embedded, Web, and CLI domains
- **Hook-Based Routing**: 400+ keyword triggers that automatically engage meta-cognition analysis
- **Coding Guidelines**: Comprehensive Rust coding conventions and best practices lookup

## Quick Start Guide
1. Clone the repository: `git clone https://github.com/ZhangHanDong/rust-skills.git`
2. Launch Claude Code with plugin: `claude --plugin-dir /path/to/rust-skills`
3. Configure permissions by copying `.claude/settings.example.json` to `.claude/settings.local.json`
4. Navigate to your Rust project and run `/sync-crate-skills` to generate dependency-specific skills
5. Ask Rust questions naturally — hooks will auto-trigger meta-cognition routing

## Use Cases
- Diagnosing compiler errors (E0382, E0597, etc.) with architectural context rather than quick fixes
- Designing domain-appropriate ownership and concurrency patterns
- Selecting optimal crates and dependencies for specific use cases
- Learning Rust idioms through mental model corrections
- Building domain-specific applications (trading systems, IoT devices, web services)
- Code review with anti-pattern detection

## Technical Details
- **Pricing Model**: Free and open source under MIT License
- **Platform Support**: Any platform running Claude Code CLI (Linux, macOS, Windows)
- **Integration Options**: Works with Claude Code (primary), OpenCode, and Codex; MCP-compatible via `.mcp.json`
- **Data Export**: Skills are plain markdown files; fully portable and human-readable

## Resources
- [Official Repository](https://github.com/ZhangHanDong/rust-skills)
- [Architecture Documentation (中文)](https://github.com/ZhangHanDong/rust-skills/blob/main/docs/architecture-zh.md)
- [Meta-Cognition Example: E0382](https://github.com/ZhangHanDong/rust-skills/blob/main/docs/meta-cognition-example-e0382.md)
- [Hook Mechanism Guide (中文)](https://github.com/ZhangHanDong/rust-skills/blob/main/docs/hook-mechanism-zh.md)
- [Issues & Support](https://github.com/ZhangHanDong/rust-skills/issues)

## Notes & Considerations
Full plugin installation is recommended over skills-only to enable automatic hook-based routing; without hooks, you must manually invoke `/rust-router` or specific skills. Background agents require explicit permission for `Bash(agent-browser *)` in your project settings. Documentation is primarily in Chinese with English README available. The three-layer model (Layer 1: Mechanics, Layer 2: Design, Layer 3: Domain) requires understanding that errors should be traced UP to find root causes while domain requirements should be traced DOWN to implementation.
