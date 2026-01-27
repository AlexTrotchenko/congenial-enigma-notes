---
title: Tool Note - Dexter
vendor: virattt
date: 202412291430
categories: [aiAgent, fintech, financialAnalysis, python, openSource, research]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/virattt/dexter
documentation: https://github.com/virattt/dexter#readme
type: tool
---

# Dexter - Autonomous Agent for Deep Financial Research

## Overview
Dexter is an autonomous financial research agent that thinks, plans, and learns as it works. It decomposes complex financial questions into structured research plans, executes them using live market data, and validates its own work until it produces confident, data-backed answers. Think of it as "Claude Code, but built specifically for financial research."

## Core Features
- **Intelligent Task Planning**: Automatically breaks down complex financial queries into structured, executable research steps
- **Autonomous Execution**: Selects and runs appropriate tools to gather financial data without manual intervention
- **Self-Validation**: Checks its own work and iterates until tasks are verified complete
- **Real-Time Financial Data**: Direct access to income statements, balance sheets, and cash flow statements via Financial Datasets API
- **Multi-Agent Architecture**: Specialized agents for planning, action, validation, and answer synthesis
- **Safety Features**: Built-in loop detection and configurable step limits to prevent runaway execution

## Quick Start Guide
1. Ensure Python 3.10+ and [uv](https://github.com/astral-sh/uv) package manager are installed
2. Clone the repository: `git clone https://github.com/virattt/dexter.git && cd dexter`
3. Install dependencies: `uv sync`
4. Copy environment template: `cp env.example .env`
5. Add your API keys to `.env` (OpenAI and Financial Datasets API keys required)
6. Run in interactive mode: `uv run dexter-agent`
7. Try a query like "What was Apple's revenue growth over the last 4 quarters?"

## Use Cases
- Analyzing revenue growth trends across multiple quarters for specific companies
- Comparing operating margins between competitors (e.g., Microsoft vs Google)
- Tracking cash flow trends over time periods
- Calculating financial ratios like debt-to-equity from recent filings
- Performing multi-step financial due diligence research
- Automated fundamental analysis for investment research

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: Cross-platform (Windows, Mac, Linux) - requires Python 3.10+
- **Integration Options**: OpenAI API for LLM capabilities, Financial Datasets API for market data
- **Data Export**: Results displayed in terminal; extensible via code modification
- **Dependencies**: Python, uv package manager, OpenAI API key, Financial Datasets API key

## Architecture Components
| Agent | Function |
|-------|----------|
| Planning Agent | Analyzes queries and creates structured task lists |
| Action Agent | Selects appropriate tools and executes research steps |
| Validation Agent | Verifies task completion and data sufficiency |
| Answer Agent | Synthesizes findings into comprehensive responses |

## Configuration Options
```python
from dexter.agent import Agent

agent = Agent(
    max_steps=20,              # Global safety limit
    max_steps_per_task=5       # Per-task iteration limit
)
```

## Resources
- [GitHub Repository](https://github.com/virattt/dexter)
- [README Documentation](https://github.com/virattt/dexter#readme)
- [OpenAI API Keys](https://platform.openai.com/api-keys)
- [Financial Datasets API](https://financialdatasets.ai)
- [uv Package Manager](https://github.com/astral-sh/uv)
- [Twitter/X: @virattt](https://twitter.com/virattt)

## Notes & Considerations
- Requires active API keys for both OpenAI and Financial Datasets (costs may apply for API usage)
- Currently focused on US equity markets via Financial Datasets API
- The agent operates autonomously but with configurable safety limits to prevent excessive API calls
- Open source project accepting contributions - keep PRs small and focused
- Python 3.10+ is a hard requirement
- GitHub stars: 2.9k+ | Forks: 378+ (as of late 2025)
