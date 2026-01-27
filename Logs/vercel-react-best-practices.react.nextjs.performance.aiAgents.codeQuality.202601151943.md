---
title: Tool Note - Vercel React Best Practices
vendor: Vercel Labs (Vercel Engineering)
date: 202601151943
categories: [react, nextjs, performance, aiAgents, codeQuality, webDevelopment]
pricing: free
platforms: [claudeCode, cursor, codex, opencode, claudeDesktop]
source: https://github.com/vercel-labs/agent-skills/tree/main/skills/react-best-practices
documentation: https://github.com/vercel-labs/agent-skills/blob/main/skills/react-best-practices/AGENTS.md
type: tool
---

# Vercel React Best Practices - AI-Optimized Performance Guidelines for React & Next.js

## Overview
Vercel React Best Practices is a structured repository of 45+ performance optimization rules for React and Next.js applications, specifically designed for AI agents and LLMs. Created by Vercel Engineering, it encapsulates 10+ years of optimization knowledge into actionable rules that coding agents can reference during code review, generation, and refactoring. The skill integrates with popular AI coding tools like Claude Code, Cursor, and Codex.

## Core Features
- 45+ performance rules across 8 categories, prioritized by impact from CRITICAL to LOW
- Designed specifically for AI agents and LLMs to consume and apply consistently
- Each rule includes detailed explanations with incorrect vs correct code examples
- Impact metrics to guide automated refactoring decisions
- Compiles individual rules into single AGENTS.md document for agent consumption
- Follows the Agent Skills format for broad compatibility with coding assistants

## Quick Start Guide
1. Install using npx: `npx add-skill vercel-labs/agent-skills`
2. For Claude Code: Copy skill folder to `~/.claude/skills/`
3. For Claude.ai: Add SKILL.md contents to project knowledge or paste into conversation
4. Agent automatically triggers on React/Next.js performance-related tasks
5. Reference guidelines when writing, reviewing, or refactoring React code

## Use Cases
- Writing new React components or Next.js pages with optimal patterns
- Code review for performance anti-patterns (waterfalls, bundle bloat, unnecessary re-renders)
- Automated refactoring of existing React/Next.js codebases
- Implementing efficient data fetching strategies (client and server-side)
- Bundle size optimization and code splitting decisions
- Training AI coding assistants on React performance best practices

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: Works with Claude Code, Cursor, Codex, Opencode, Claude Desktop, and any tool supporting Agent Skills format
- **Integration Options**: npx installer, manual SKILL.md copy, direct paste into AI conversations
- **Data Export**: Plain markdown files, fully portable

## Rule Categories & Impact Levels

| Priority | Category | Impact |
|----------|----------|--------|
| 1 | Eliminating Async Waterfalls | CRITICAL |
| 2 | Bundle Size Optimization | CRITICAL |
| 3 | Server-Side Performance | HIGH |
| 4 | Client-Side Data Fetching | HIGH |
| 5 | Re-render Optimization | MEDIUM |
| 6 | Rendering Performance | MEDIUM |
| 7 | Advanced Patterns | LOW |
| 8 | JavaScript Performance | LOW |

## Resources
- [GitHub Repository](https://github.com/vercel-labs/agent-skills/tree/main/skills/react-best-practices)
- [AGENTS.md Reference](https://github.com/vercel-labs/agent-skills/blob/main/skills/react-best-practices/AGENTS.md)
- [SKILL.md Configuration](https://github.com/vercel-labs/agent-skills/blob/main/skills/react-best-practices/SKILL.md)
- [Vercel Blog Announcement](https://vercel.com/blog/introducing-react-best-practices)
- [Agent Skills Format Specification](https://agentskills.io/)

## Notes & Considerations
The framework prioritizes high-impact optimizations first: eliminating request waterfalls and reducing bundle size typically yield the largest real-world improvements before moving to micro-optimizations. Rules are sourced from real production performance work at Vercel. For network-dependent skills on claude.ai, you may need to allow domains at claude.ai/admin-settings/capabilities. Originally created by @shuding at Vercel. The repository is actively maintained as part of the broader vercel-labs/agent-skills collection which also includes deployment and UI review skills.
