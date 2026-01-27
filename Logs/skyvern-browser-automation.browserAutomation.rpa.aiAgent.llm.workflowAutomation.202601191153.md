---
title: Tool Note - Skyvern
vendor: Skyvern-AI (Ikonomos Inc.)
date: 202601191153
categories: [browserAutomation, rpa, aiAgent, llm, workflowAutomation, webScraping]
pricing: freemium
platforms: [web, windows, mac, linux]
source: https://www.skyvern.com
documentation: https://docs.skyvern.com
type: tool
---

# Skyvern - AI-Powered Browser Workflow Automation

## Overview
Skyvern automates browser-based workflows using Large Language Models (LLMs) and computer vision, eliminating the need for brittle XPath-based scripts. Unlike traditional RPA tools that break when website layouts change, Skyvern visually interprets web pages to navigate and interact with any website—even ones it has never seen before. Backed by Y Combinator with 18k+ GitHub stars, it's designed for both developers and enterprises needing scalable, resilient browser automation.

## Core Features
- **Vision-based navigation**: Uses computer vision and LLMs to understand web pages visually, adapting automatically to layout changes without hardcoded selectors
- **Multi-step workflow builder**: Chain tasks together for complex processes including loops, conditionals, file parsing, HTTP requests, and custom code blocks
- **CAPTCHA & 2FA support**: Built-in solving for CAPTCHAs and support for TOTP-based two-factor authentication
- **Structured data extraction**: Extract data in JSON or CSV format with custom schema definitions
- **Authentication & credentials**: Integrates with Bitwarden, 1Password, and LastPass for secure credential management
- **Proxy network support**: Country, state, and zip-code level targeting for geo-specific automation
- **Browser livestreaming**: Real-time viewport streaming for debugging and manual intervention when needed
- **Multi-LLM support**: Works with OpenAI, Anthropic Claude, Azure OpenAI, AWS Bedrock, Gemini, Ollama, and OpenRouter

## Quick Start Guide
1. Install Skyvern via pip: `pip install skyvern`
2. Run initial setup: `skyvern quickstart` (handles database setup and migrations)
3. Launch the full service with UI: `skyvern run all`
4. Navigate to `http://localhost:8080` to access the web interface
5. Create your first task with a URL and natural language prompt
6. Alternatively, use the Python SDK:
```python
from skyvern import Skyvern
skyvern = Skyvern()
task = await skyvern.run_task(prompt="Find the top post on hackernews today")
```

## Use Cases
- **Invoice automation**: Download invoices from hundreds of vendor portals automatically
- **Job applications**: Apply to positions across multiple job boards with one click
- **Government forms**: Navigate and complete complex government paperwork
- **Procurement automation**: Automate purchasing workflows across supplier websites
- **Lead generation**: Fill contact forms at scale for outbound sales
- **Insurance quotes**: Retrieve quotes from multiple providers in any language
- **Data extraction**: Scrape structured data from dynamic, JavaScript-heavy websites

## Technical Details
- **Pricing Model**: Open source (AGPL-3.0) free forever; Cloud at $0.05/step with no surprises; Enterprise with custom pricing for advanced features
- **Platform Support**: Self-hosted via Python 3.11-3.12 on Windows/Mac/Linux; Docker Compose deployment; Skyvern Cloud for managed hosting
- **Integration Options**: REST API, Python SDK, TypeScript client, MCP (Model Context Protocol), Zapier, Make.com, N8N
- **Data Export**: JSON, CSV, custom schemas; files automatically uploaded to block storage

## Resources
- [Official Website](https://www.skyvern.com)
- [Documentation](https://docs.skyvern.com)
- [GitHub Repository](https://github.com/Skyvern-AI/skyvern)
- [Discord Community](https://discord.gg/fG2XXEuQX3)
- [Blog & Changelog](https://www.skyvern.com/blog)
- [Skyvern Cloud](https://app.skyvern.com)

## Notes & Considerations
Skyvern requires an LLM API key (OpenAI, Anthropic, etc.) which incurs additional costs beyond the platform fee. Complex workflows with many steps can become expensive at scale. The open-source version lacks anti-bot detection and proxy networks available in the cloud version. Python 3.13 is not yet supported. For Windows users, Rust and VS Code with C++ dev tools are additional prerequisites. Telemetry is enabled by default but can be disabled via the `SKYVERN_TELEMETRY=false` environment variable. State-of-the-art performance with 64.4% accuracy on WebBench and 85.8% on WebVoyager benchmarks.
