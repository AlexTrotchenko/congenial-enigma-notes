---
title: Tool Note - SkillsMP (Agent Skills Marketplace)
vendor: Godi13 (Independent Community Project)
date: 202512260045
categories: [aiAgents, claudeCode, openAI, skillsDiscovery, openSource, devTools]
pricing: free
platforms: [web]
source: https://skillsmp.com
documentation: https://skillsmp.com/en/docs
type: tool
---

# SkillsMP - Agent Skills Marketplace for AI Coding Assistants

## Overview
SkillsMP is a community-driven marketplace that aggregates over 33,000 open-source agent skills from GitHub for AI coding assistants including Claude Code, OpenAI Codex CLI, and ChatGPT. It provides intelligent search, category filtering, and quality indicators to help developers quickly discover modular capabilities that extend their AI tools. All indexed skills follow the open SKILL.md standard specification.

## Core Features
- AI-powered semantic search across 33,000+ agent skills from GitHub
- Category-based browsing with 12 organized skill categories (Tools, Development, Data & AI, DevOps, etc.)
- Quality filtering with minimum star requirements and quality indicators
- Universal compatibility with Claude Code, OpenAI Codex CLI, and ChatGPT
- Open SKILL.md standard format for cross-platform skill portability
- Regular GitHub syncing to keep skills updated
- Support for marketplace.json enabling one-command installation

## Quick Start Guide
1. Visit https://skillsmp.com to browse the skill catalog
2. Use AI-powered search or browse by category to find relevant skills
3. Click on a skill to view its GitHub repository and documentation
4. Clone the skill repository: `git clone <repo-url>`
5. Copy skill folder to appropriate location:
   - Claude Code: `~/.claude/skills/` (personal) or `.claude/skills/` (project)
   - Codex CLI: `~/.codex/skills/`
6. The AI automatically discovers and loads skills from these directories

## Use Cases
- Automating code review workflows with dedicated review skills
- Extending AI assistants with domain-specific capabilities (testing, security, documentation)
- Building custom AI toolchains by combining multiple compatible skills
- Discovering community solutions for common development tasks
- Learning skill development patterns from existing implementations
- Finding specialized skills for databases, blockchain, DevOps, and more

## Technical Details
- **Pricing Model**: Completely free, community-driven open-source project
- **Platform Support**: Web-based interface accessible from any browser
- **Integration Options**: Direct GitHub integration, supports marketplace.json for plugin marketplaces
- **Data Export**: Skills are GitHub repositories, fully portable and forkable

## Resources
- [Official Website](https://skillsmp.com)
- [Skills Documentation](https://skillsmp.com/en/docs)
- [Anthropic Official Skills](https://github.com/anthropics/skills)
- [Claude Code Skills Docs](https://code.claude.com/docs/en/skills)
- [OpenAI Codex Skills Docs](https://github.com/openai/codex/blob/main/docs/skills.md)
- [Agent Skills Specification](https://agentskills.io)
- [Creator Twitter](https://x.com/God_I_13)
- [Creator GitHub](https://github.com/Godi13)

## Notes & Considerations
SkillsMP is an independent community project not affiliated with Anthropic or OpenAI. Skills are sourced from public GitHub repositories with a minimum 2-star quality filter, but users should always review skill code before installation as with any open-source software. Skills are model-invoked (AI automatically decides when to use them based on context) rather than user-invoked like slash commands. The marketplace regularly syncs with GitHub, but there may be slight delays before updates appear.
