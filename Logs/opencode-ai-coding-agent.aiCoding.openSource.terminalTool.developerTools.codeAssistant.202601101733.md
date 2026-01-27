---
title: Tool Note - OpenCode
vendor: Anomaly Co
date: 202601101733
categories: [aiCoding, openSource, terminalTool, developerTools, codeAssistant, cliTool]
pricing: freemium
platforms: [windows, mac, linux]
source: https://opencode.ai
documentation: https://opencode.ai/docs
type: tool
---

# OpenCode - The Open Source AI Coding Agent

## Overview
OpenCode is a fully open source AI coding agent that operates through a terminal-based interface, desktop app, or IDE extension. It provides a provider-agnostic approach to AI-assisted coding, supporting Claude, OpenAI, Google, and local models while offering built-in LSP support and a client/server architecture. Created by the team behind terminal.shop and built by neovim enthusiasts, it pushes the limits of what's possible in terminal-based development workflows.

## Core Features
- Multi-provider support with no vendor lock-in (Claude, OpenAI, Google, local models)
- Built-in agents: "build" for full development access and "plan" for read-only analysis
- Out-of-box LSP (Language Server Protocol) integration for intelligent code assistance
- Client/server architecture enabling remote control from mobile apps
- Conversation sharing for team collaboration via shareable links
- Full undo/redo support for AI-made changes with `/undo` and `/redo` commands
- Image drag-and-drop support for visual context in prompts
- MCP (Model Context Protocol) server support for extensibility
- Customizable themes, keybinds, and code formatters

## Quick Start Guide
1. Install via curl: `curl -fsSL https://opencode.ai/install | bash` (or use npm/brew/scoop/choco)
2. Navigate to your project directory: `cd /path/to/project`
3. Launch OpenCode: `opencode`
4. Configure provider by running `/connect` command and selecting a provider (Zen recommended for beginners)
5. Initialize project with `/init` to create AGENTS.md file analyzing your codebase
6. Start coding - use Tab to switch between Build and Plan modes

## Use Cases
- AI-assisted code generation and feature implementation
- Codebase exploration and understanding unfamiliar projects (Plan mode)
- Refactoring and code improvements with intelligent suggestions
- Team collaboration through shared conversation links
- Multi-step complex development tasks using the @general subagent
- Remote development via client/server architecture

## Technical Details
- **Pricing Model**: Free open source (MIT license); OpenCode Zen offers curated premium models with billing
- **Platform Support**: Windows (Scoop, Chocolatey, npm), macOS (Homebrew, npm), Linux (Homebrew, paru, npm, Docker)
- **Integration Options**: MCP servers, ACP support, custom tools, SDK for building extensions, LSP servers
- **Data Export**: Conversations shareable via `/share` command; project config via AGENTS.md files

## Resources
- [Official Website](https://opencode.ai)
- [Documentation](https://opencode.ai/docs)
- [Getting Started Guide](https://opencode.ai/docs/)
- [GitHub Repository](https://github.com/anomalyco/opencode)
- [Discord Community](https://opencode.ai/discord)
- [Desktop App Downloads](https://opencode.ai/download)
- [OpenCode Zen (Managed Models)](https://opencode.ai/zen)

## Notes & Considerations
Requires a modern terminal emulator (WezTerm, Alacritty, Ghostty, or Kitty recommended) for TUI mode. API keys for LLM providers must be configured separately unless using OpenCode Zen. The AGENTS.md file created during `/init` should be committed to version control for consistent AI behavior. Desktop app is currently in beta. Bun installation support on Windows is still in progress. The project has 45.7k+ GitHub stars and 487+ contributors, indicating strong community adoption.
