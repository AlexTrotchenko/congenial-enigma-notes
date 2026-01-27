---
title: Tool Note - Superpowers
vendor: Jesse Vincent (obra)
date: 202412291538
categories: [claudeCode, aiAgents, devWorkflow, tdd, skillsLibrary, plugin]
pricing: free
platforms: [mac, linux, windows]
source: https://github.com/obra/superpowers
documentation: https://github.com/obra/superpowers/blob/main/README.md
type: tool
---

# Superpowers - Complete Development Workflow Skills for Coding Agents

## Overview
Superpowers is a comprehensive skills library and plugin for Claude Code (and compatible coding agents like OpenAI Codex) that enforces disciplined software development workflows. It transforms AI coding assistants from eager code generators into methodical collaborators that brainstorm designs, create implementation plans, and execute with strict TDD practices. Created by Jesse Vincent (obra), it's designed to extract maximum value from agentic coding sessions.

## Core Features
- Brainstorm-Plan-Implement workflow that forces design thinking before coding
- Test-Driven Development enforcement with RED-GREEN-REFACTOR cycle that deletes code written before tests
- Git worktree integration for isolated parallel development branches
- Subagent-driven development with two-stage review (spec compliance, then code quality)
- Systematic debugging with 4-phase root cause analysis process
- 20+ battle-tested skills that activate automatically based on context
- Slash commands for manual workflow control (`/superpowers:brainstorm`, `/superpowers:write-plan`, `/superpowers:execute-plan`)

## Quick Start Guide
1. Install Claude Code 2.0.13+ on your system
2. Add the marketplace: `/plugin marketplace add obra/superpowers-marketplace`
3. Install the plugin: `/plugin install superpowers@superpowers-marketplace`
4. Quit and restart Claude Code to activate
5. Verify with `/help` - you should see brainstorm, write-plan, and execute-plan commands
6. Start any coding task - Superpowers automatically activates and guides you through design first

## Use Cases
- Building new features with proper specification and design documents
- Refactoring legacy codebases with planned, testable increments
- Debugging complex issues using systematic root cause analysis
- Training junior developers on TDD and professional workflows
- Managing multiple parallel development efforts via git worktrees
- Creating comprehensive implementation plans for migrations or multi-file changes

## Technical Details
- **Pricing Model**: Free and open source (MIT license)
- **Platform Support**: macOS, Linux, Windows (anywhere Claude Code runs)
- **Integration Options**: Claude Code plugin system, experimental Codex support, OpenCode support
- **Data Export**: Skills stored as markdown files in `~/.config/superpowers/` or `~/.claude/plugins/cache/`

## Included Skills

### Development Workflow
- `brainstorming` - Refines rough ideas through questions, explores alternatives, presents design in sections
- `using-git-worktrees` - Creates isolated workspace on new branch with clean test baseline
- `writing-plans` - Breaks work into bite-sized 2-5 minute tasks with exact file paths and commands
- `executing-plans` - Executes plan in batches with human checkpoints
- `subagent-driven-development` - Dispatches fresh subagent per task with two-stage review

### Quality Assurance
- `test-driven-development` - Enforces RED-GREEN-REFACTOR with automatic deletion of untested code
- `requesting-code-review` - Reviews against plan, reports issues by severity, critical blocks progress
- `verification-before-completion` - Ensures work is actually complete and tested

### Debugging
- `systematic-debugging` - 4-phase root cause process with defense-in-depth techniques
- `root-cause-tracing` - Methodical diagnosis instead of random changes
- `condition-based-waiting` - Proper async handling patterns

### Meta Skills
- `writing-skills` - How to create new skills for Claude
- `using-superpowers` - Core instructions for how skills work
- `getting-started` - Bootstrap that teaches skill discovery and usage

## Resources
- [Official Repository](https://github.com/obra/superpowers)
- [Documentation README](https://github.com/obra/superpowers/blob/main/README.md)
- [Release Notes](https://github.com/obra/superpowers/blob/main/RELEASE-NOTES.md)
- [Author's Blog Post](https://blog.fsck.com/2025/10/09/superpowers/)
- [Superpowers Marketplace](https://github.com/obra/superpowers-marketplace)
- [Community Skills](https://github.com/obra/superpowers-skills)
- [Chrome Browser Plugin](https://github.com/obra/superpowers-chrome)
- [Plugin Development Guide](https://github.com/obra/superpowers-developing-for-claude-code)

## Related Plugins
- **superpowers-lab** - Experimental skills including tmux integration for interactive CLI tools
- **superpowers-chrome** - Browser automation via Chrome DevTools Protocol
- **elements-of-style** - Writing guidance based on Strunk's classic (available via marketplace)

## Notes & Considerations
- Skills are mandatory when present - Claude will always follow them for matching tasks
- The brainstorm phase may feel slow initially but prevents wasted implementation time
- Works best in git repositories where worktree features can activate
- Subagent-driven development uses more API calls but produces higher quality code
- Personal skills can override or extend built-in skills via `~/.config/superpowers/skills/`
- Codex and OpenCode support are experimental and may require manual setup
- The plugin system requires Claude Code 2.0.13 or newer
- Skills use psychological persuasion principles (authority, commitment, scarcity) to ensure agent compliance
