---
title: Tool Note - Beads (bd)
vendor: Steve Yegge
date: 202512271152
categories: [codingAgents, issueTracking, cli, git, aiDevtools, developerTools]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/steveyegge/beads
documentation: https://github.com/steveyegge/beads/tree/main/docs
type: tool
---

# Beads (bd) - Memory Upgrade for Coding Agents

## Overview
Beads is a lightweight, graph-based issue tracker designed specifically for AI coding agents. It provides persistent memory across sessions using a distributed database synced via git, enabling agents to handle long-horizon tasks, track dependencies, and maintain context after compaction. Drop it into any project and your coding agent gains unprecedented planning capability with proper epics, dependency tracking, and ready work detection.

## Core Features
- **Zero setup initialization** - `bd init` creates a project-local SQLite database backed by git-versioned JSONL
- **Four dependency types** - blocks, related, parent-child, and discovered-from relationships chain issues like beads
- **Ready work detection** - automatically finds issues with no open blockers for immediate action
- **Agent-friendly JSON output** - all commands support `--json` for programmatic integration
- **Distributed via git** - acts like a centralized database but syncs through git with no server required
- **Hash-based collision-resistant IDs** - enables reliable multi-agent, multi-branch workflows (v0.20.1+)
- **Memory decay/compaction** - semantic compression gracefully reduces old closed issues while preserving context
- **Full audit trail** - every change is logged for complex operation reconstruction

## Quick Start Guide
1. Install via npm, curl, or Homebrew:
   ```bash
   npm install -g @beads/bd
   # or
   curl -fsSL https://raw.githubusercontent.com/steveyegge/beads/main/scripts/install.sh | bash
   # or
   brew tap steveyegge/beads && brew install bd
   ```
2. Initialize in your project root:
   ```bash
   bd init  # Creates .beads/ directory with database
   ```
3. Tell your agent to use bd by adding to AGENTS.md:
   ```bash
   echo -e "\nBEFORE ANYTHING ELSE: run 'bd onboard' and follow the instructions" >> AGENTS.md
   ```
4. Your agent will now automatically create/manage issues:
   ```bash
   bd ready --json | jq '.[0]'  # Find ready work
   bd create "Fix bug" -t bug -p 0 --json  # Create issues
   bd close bd-a1b2 --reason "Completed"  # Complete work
   ```
5. Run interactive tutorial: `bd quickstart`

## Use Cases
- **Long-horizon agent tasks** - maintains context across multiple compaction sessions
- **Multi-agent coordination** - distributed database enables multiple agents on different machines
- **Dependency-aware planning** - proper epics with blocking relationships and ready work detection
- **Automatic work discovery** - agents file issues for problems noticed during work
- **Team collaboration** - git-synced issue tracking without external services
- **Protected branch workflows** - supports GitHub/GitLab protected branches via separate sync branch

## Technical Details
- **Pricing Model**: Completely free, MIT licensed open source
- **Platform Support**: macOS, Windows, Linux (glibc 2.32+ required - Ubuntu 22.04+, Debian 11+, RHEL 9+)
- **Integration Options**: MCP server for Claude Desktop, Claude Code plugin with slash commands, Python/Bash agent examples, git hooks for auto-sync
- **Data Export**: JSONL format stored in git, SQLite local cache, full export/import commands
- **Requirements**: Git repository, Go 1.21+ (for building from source)

## Resources
- [Official Repository](https://github.com/steveyegge/beads)
- [Installation Guide](https://github.com/steveyegge/beads/blob/main/docs/INSTALLING.md)
- [Quick Start Tutorial](https://github.com/steveyegge/beads/blob/main/docs/QUICKSTART.md)
- [FAQ](https://github.com/steveyegge/beads/blob/main/docs/FAQ.md)
- [Troubleshooting](https://github.com/steveyegge/beads/blob/main/docs/TROUBLESHOOTING.md)
- [Advanced Features](https://github.com/steveyegge/beads/blob/main/docs/ADVANCED.md)
- [NPM Package](https://www.npmjs.com/package/@beads/bd)
- [PyPI MCP Package](https://pypi.org/project/beads-mcp/)

## Notes & Considerations
- Alpha status: Core features work well but expect API changes before 1.0
- Linux requires glibc 2.32+ (Ubuntu 20.04 users need to upgrade or build from source)
- Stealth mode available for personal use without affecting shared repos (`bd init --stealth`)
- Git merge driver handles JSONL conflicts automatically when configured
- Third-party UIs available: beads-ui (web), bdui (terminal), perles (TUI with BQL), vscode-beads extension
- Agent Mail feature provides real-time multi-agent coordination with ~98.5% reduction in git traffic
- Version 0.20.1+ uses hash-based IDs (bd-a1b2) instead of sequential IDs (bd-1) for collision-free multi-worker support
