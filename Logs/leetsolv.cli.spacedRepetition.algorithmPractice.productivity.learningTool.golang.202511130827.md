---
title: Tool Note - LeetSolv
vendor: eannchen
date: 202511130827
categories: [cli, spacedRepetition, algorithmPractice, productivity, learningTool, golang]
pricing: free
platforms: [linux, mac, windows]
source: https://github.com/eannchen/leetsolv
documentation: https://github.com/eannchen/leetsolv/blob/main/document/INSTALL.md
type: tool
---

# LeetSolv - CLI Spaced Repetition Tool for Algorithm Mastery

## Overview
LeetSolv is a command-line revision tool that utilizes a custom-adapted SuperMemo 2 (SM-2) algorithm to help developers master data structures and algorithms through intelligent spaced repetition practice—not rote memorization. Built entirely in pure Go with zero third-party dependencies, it incorporates variables for familiarity, importance, reasoning, and due penalties to create personalized review schedules. The tool emphasizes local-first data storage with atomic writes, ensuring privacy and data consistency.

## Core Features
- **Custom SM-2 Algorithm**: Adapted spaced repetition scheduling with familiarity (5-level), importance (4-tier), and reasoning scales (3-level) to optimize review intervals
- **Due Priority Scoring**: Multi-factor scoring system combining importance, overdue days, familiarity, review count, and ease factor to intelligently prioritize problems
- **Trie-Based Search & Filtering**: Fast keyword search with advanced filtering by familiarity, importance, review count, and due status
- **Zero Dependencies Philosophy**: Implemented entirely in pure Go with no third-party libraries or external APIs, providing full control over implementation
- **Dual Operation Modes**: Interactive mode for turn-based dialogue or batch mode for direct command-line execution
- **History & Undo System**: Track changes with up to 50 history entries and revert recent actions
- **Local-First & Privacy**: No data collection or internet uploads, with atomic writes using temporary files for data consistency
- **Flexible Configuration**: Environment variables or JSON settings file for persistent customization

## Quick Start Guide
1. Install using the automated script: `curl -fsSL https://raw.githubusercontent.com/eannchen/leetsolv/main/install.sh | bash`
2. Alternatively, download the binary for your platform from [GitHub Releases](https://github.com/eannchen/leetsolv/releases)
3. Verify installation with `leetsolv version` and `leetsolv help`
4. Start interactive mode with `leetsolv` or use batch commands directly
5. Add your first problem: `leetsolv add https://leetcode.com/problems/example`
6. Check your status with `leetsolv status` to see due and upcoming problems
7. List problems with `leetsolv list` or search with filters: `leetsolv search tree --familiarity=3 --due-only`
8. Configure settings via `$HOME/.leetsolv/settings.json` or environment variables

## Use Cases
- Systematic algorithm interview preparation with spaced repetition
- Maintaining long-term retention of data structures and algorithms knowledge
- Prioritizing critical problems while managing review workload efficiently
- Tracking progress on LeetCode and other coding platform problems
- Building a personalized DSA revision schedule based on individual learning pace
- Focusing on reasoning and understanding rather than memorization

## Technical Details
- **Pricing Model**: Completely free and open source (MIT License)
- **Platform Support**: Cross-platform CLI tool for Linux (amd64/arm64), macOS (amd64/arm64), Windows (amd64/arm64)
- **Integration Options**: Local JSON file storage, configurable via environment variables or settings file
- **Data Export**: Problems stored in JSON format at `$HOME/.leetsolv/questions.json`, change history in `deltas.json`
- **Configuration Files**: 
  - Questions data: `$HOME/.leetsolv/questions.json`
  - History: `$HOME/.leetsolv/deltas.json`
  - Settings: `$HOME/.leetsolv/settings.json`
  - Logs: `$HOME/.leetsolv/info.log` and `error.log`

## Resources
- [Official Repository](https://github.com/eannchen/leetsolv)
- [Installation Guide](https://github.com/eannchen/leetsolv/blob/main/document/INSTALL.md)
- [Development Guide](https://github.com/eannchen/leetsolv/blob/main/document/DEVELOPMENT_GUIDE.md)
- [Motivation & Design](https://github.com/eannchen/leetsolv/blob/main/document/MOTIVATION.md)
- [GitHub Issues](https://github.com/eannchen/leetsolv/issues)
- [GitHub Discussions](https://github.com/eannchen/leetsolv/discussions)
- [Latest Releases](https://github.com/eannchen/leetsolv/releases)

## Command Reference
| Command | Aliases | Description |
|---------|---------|-------------|
| list | ls | List all questions with pagination |
| search | s | Search questions by keywords with filters |
| detail | get | Get detailed information about a question |
| status | stat | Show summary of due and upcoming questions |
| upsert | add | Add or update a question |
| remove | rm, delete, del | Delete a question |
| undo | back | Undo the last action |
| history | hist, log | Show action history |
| setting | config, cfg | View and modify application settings |
| version | ver, v | Show application version information |
| help | h | Show help information |
| clear | cls | Clear the screen |
| quit | q, exit | Exit the application |

## Configuration Options
Key configurable parameters (via environment variables or JSON):
- **Algorithm Settings**: `randomizeInterval` (default: true), `overduePenalty` (default: false), `overdueLimit` (7 days)
- **Priority Scoring**: Adjustable weights for importance (1.5), overdue (0.5), familiarity (3.0), review penalty (-1.5), ease penalty (-1.0)
- **Display Settings**: `pageSize` (5), `topKDue` (10), `topKUpcoming` (10)
- **History**: `maxDelta` (50 entries)

## Notes & Considerations
**Important Usage Philosophy**: LeetSolv is a spaced repetition scheduler, not a solved-problem database. Only add problems you intend to revisit—bulk-adding creates unrealistic schedules and overwhelming due lists. If reviewing old problems, re-solve them first before adding to ensure accurate "last seen" dates. The tool uses the SM-2 algorithm which can accumulate due problems if you skip days; use the due priority scoring to focus on highest-priority items first. Once you've mastered a problem through multiple reviews, consider removing it from tracking to maintain focus on problems needing active practice. All data is stored locally with no internet connectivity required.