---
title: Tool Note - Dev Browser
vendor: Sawyer Hood
date: 202512121430
categories: [browserAutomation, claudeCode, testing, playwright, aiAgent, developerTools]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/SawyerHood/dev-browser
documentation: https://github.com/SawyerHood/dev-browser#readme
type: tool
---

# Dev Browser - Browser Automation Plugin for Claude Code

## Overview
Dev Browser is a Playwright-based browser automation plugin for Claude Code that enables AI agents to control web browsers for testing and development workflows. It maintains persistent browser state across script executions, allowing Claude to interact with running applications, fill forms, click buttons, and verify changes work—all without leaving your coding session.

## Core Features
- **Stateful browser server** - Maintains browser state across script executions, pages stay alive between interactions
- **Hybrid execution model** - Combines full script execution with step-by-step observation for flexible automation
- **Codebase-aware debugging** - Includes instructions for Claude to reference your actual code when troubleshooting
- **LLM-optimized DOM inspection** - Structured snapshots designed for AI understanding (similar to browser-use)
- **Playwright foundation** - Built on robust Playwright automation framework
- **Context efficient** - Uses fewer tokens than pure MCP approaches while being more reliable than pure script approaches

## Quick Start Guide
1. Install [Claude Code](https://docs.anthropic.com/en/docs/claude-code) CLI if not already installed
2. Install Bun runtime: `curl -fsSL https://bun.sh/install | bash`
3. Add the plugin marketplace: `/plugin marketplace add sawyerhood/dev-browser`
4. Install the plugin: `/plugin install dev-browser@sawyerhood/dev-browser`
5. Restart Claude Code to activate the plugin
6. Prompt Claude to interact with your browser (e.g., "Open localhost:3000 and test the signup flow")

## Use Cases
- **Testing application flows** - Verify signup, login, checkout, and other user journeys
- **Debugging UI issues** - Have Claude investigate why buttons aren't working or elements aren't rendering
- **Visual design iteration** - Combine with frontend-design skill to iterate on UI until it looks good
- **Form validation testing** - Automatically fill and submit forms to test validation logic
- **End-to-end verification** - Close the loop on development by having Claude verify changes work

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: Cross-platform via Bun runtime (Windows, Mac, Linux); requires Claude Code CLI
- **Integration Options**: Works as Claude Code plugin; uses Playwright under the hood
- **Data Export**: N/A (browser automation tool)
- **Dependencies**: Bun v1.0+, Claude Code CLI, Playwright

## Performance Benchmarks
| Metric | Dev Browser | Playwright MCP | Playwright Skill |
|--------|-------------|----------------|------------------|
| Time | 3m 53s | 4m 31s | 8m 07s |
| Cost | $0.88 | $1.45 | $1.45 |
| Turns | 29 | 51 | 38 |
| Success | 100% | 100% | 67% |

*14% faster and 39% cheaper than alternatives with higher reliability*

## Resources
- [Official Repository](https://github.com/SawyerHood/dev-browser)
- [README Documentation](https://github.com/SawyerHood/dev-browser#readme)
- [Evaluation Methodology](https://github.com/SawyerHood/dev-browser-eval)
- [Claude Code Docs](https://docs.anthropic.com/en/docs/claude-code)
- [Author GitHub](https://github.com/sawyerhood)

## Notes & Considerations
Requires Claude Code CLI which is a separate Anthropic product. The plugin architecture means it only works within Claude Code sessions, not standalone. Best suited for development/testing workflows rather than production automation. The stateful approach means browser sessions persist—remember to close pages when done to avoid resource accumulation. TypeScript-based (96.6%) with shell scripts for installation.
