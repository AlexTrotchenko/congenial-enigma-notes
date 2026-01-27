---
title: Tool Note - Skill Seekers
vendor: Yusuf Karaaslan
date: 202601171430
categories: [automation, webScraping, aiTools, documentation, cliTool, mcpServer]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/yusufkaraaslan/Skill_Seekers
documentation: https://github.com/yusufkaraaslan/Skill_Seekers/blob/development/docs/
type: tool
---

# Skill Seekers - Convert Documentation into Claude AI Skills

## Overview
Skill Seekers is an automated Python tool that transforms documentation websites, GitHub repositories, and PDF files into production-ready Claude AI skills in minutes instead of hours. It scrapes multiple sources, performs deep AST code analysis, detects conflicts between documentation and implementation, and packages everything into uploadable `.zip` files for Claude AI (plus Google Gemini, OpenAI ChatGPT, and generic Markdown exports).

## Core Features
- **Multi-Source Scraping** - Documentation websites, GitHub repos, and PDFs with unified output and conflict detection
- **llms.txt Auto-Detection** - Automatically finds and uses LLM-ready documentation files for 10x faster processing
- **Deep Code Analysis** - AST parsing for Python, JavaScript, TypeScript, Java, C++, Go with API extraction
- **Conflict Detection** - Automatically identifies discrepancies between documented APIs and actual code implementation
- **AI Enhancement** - Transforms basic templates into comprehensive 500+ line guides using Claude (local or API)
- **MCP Server Integration** - Natural language interface for 5 AI agents (Claude Code, Cursor, Windsurf, VS Code + Cline, IntelliJ IDEA)
- **Multi-LLM Platform Support** - Export to Claude AI, Google Gemini, OpenAI ChatGPT, or generic Markdown
- **Async Mode** - 2-3x faster scraping with configurable workers and intelligent caching
- **Private Config Repos** - Fetch configs from team/enterprise private git repositories

## Quick Start Guide
1. **Install from PyPI**: `pip install skill-seekers`
2. **Run a preset**: `skill-seekers scrape --config configs/react.json`
3. **Enhance with AI**: `skill-seekers enhance output/react/` (or use `--enhance-local` during scrape)
4. **Package the skill**: `skill-seekers package output/react/`
5. **Upload to Claude**: `skill-seekers upload output/react.zip` (requires `ANTHROPIC_API_KEY`)
6. **Or use one-command workflow**: `skill-seekers install --config react`

## Use Cases
- **Developers**: Create comprehensive Claude skills from any framework documentation + GitHub source code
- **Game Developers**: Generate skills for game engines like Godot, Unity with complete API references
- **Teams**: Combine internal documentation with code repositories into single source-of-truth skills
- **Open Source Contributors**: Analyze repositories to identify documentation gaps and outdated examples
- **Learners**: Build learning-focused skills from docs, tutorials, and PDF manuals

## Technical Details
- **Pricing Model**: Free and open source (MIT License); no API costs when using local enhancement with Claude Code Max
- **Platform Support**: Python 3.10+; runs on Windows, macOS, and Linux
- **Integration Options**: MCP server for 5 AI agents (stdio + HTTP transport); CLI; programmatic Python API
- **Data Export**: ZIP for Claude AI, tar.gz for Gemini, ZIP + Vector Store for OpenAI, or generic Markdown

## Resources
- [Official Repository](https://github.com/yusufkaraaslan/Skill_Seekers)
- [Quick Start Guide](https://github.com/yusufkaraaslan/Skill_Seekers/blob/development/QUICKSTART.md)
- [Bulletproof Quickstart](https://github.com/yusufkaraaslan/Skill_Seekers/blob/development/BULLETPROOF_QUICKSTART.md)
- [MCP Setup Guide](https://github.com/yusufkaraaslan/Skill_Seekers/blob/development/docs/MCP_SETUP.md)
- [Large Documentation Guide](https://github.com/yusufkaraaslan/Skill_Seekers/blob/development/docs/LARGE_DOCUMENTATION.md)
- [Async Support Guide](https://github.com/yusufkaraaslan/Skill_Seekers/blob/development/ASYNC_SUPPORT.md)
- [Unified Scraping Guide](https://github.com/yusufkaraaslan/Skill_Seekers/blob/development/docs/UNIFIED_SCRAPING.md)
- [PyPI Package](https://pypi.org/project/skill-seekers/)
- [Discussions/Support](https://github.com/yusufkaraaslan/Skill_Seekers/discussions)

## Notes & Considerations
- For large documentation (10K-40K+ pages like Godot), use the split config strategy with router/hub skills to avoid context window limits
- Local AI enhancement requires Claude Code Max subscription but has zero API costs; API enhancement requires ANTHROPIC_API_KEY
- GitHub scraping benefits from setting `GITHUB_TOKEN` environment variable for higher rate limits
- PDF OCR extraction requires additional dependencies: `pip install pytesseract Pillow`
- MCP HTTP transport (for Cursor/Windsurf/IntelliJ) requires manually starting the server: `python3 -m skill_seekers.mcp.server --transport http --port 8765`
- Ready-to-use presets available for: Godot, React, Vue, Django, FastAPI, Ansible Core
- Version 2.5.0 is the latest stable release with multi-platform feature parity
