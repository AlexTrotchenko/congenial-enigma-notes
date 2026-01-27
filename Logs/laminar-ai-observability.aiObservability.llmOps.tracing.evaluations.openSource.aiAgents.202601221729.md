---
title: Tool Note - Laminar
vendor: Laminar (lmnr.ai) - Y Combinator S24
date: 202601221729
categories: [aiObservability, llmOps, tracing, evaluations, openSource, aiAgents]
pricing: freemium
platforms: [web, selfHosted]
source: https://laminar.sh
documentation: https://docs.lmnr.ai
type: tool
---

# Laminar - Open-Source Observability Platform for AI Agents

## Overview
Laminar is an open-source observability platform purpose-built for AI agents, enabling developers to trace, evaluate, and analyze agent behavior in production. Built with Rust for high performance, it can ingest hundreds of millions of traces per day while providing SQL access to all data. Backed by Y Combinator (S24), Laminar offers both cloud-hosted and self-hosted deployment options.

## Core Features
- **OpenTelemetry-native tracing** - Single line of code to automatically trace popular LLM frameworks including OpenAI, Anthropic, LangChain, Vercel AI SDK, and more
- **Real-time span visibility** - See traces of long-running agents as they happen, without waiting for completion
- **Zero-boilerplate evaluation SDK** - Write agent functions and evaluators, pass data, and run with automatic parallelism and retries
- **SQL access to all data** - Query traces, metrics, and events with built-in SQL editor; bulk create datasets from queries
- **Browser agent observability** - Automatically captures browser window recordings synced with agent traces for Browser Use, Stagehand, and Playwright
- **Custom dashboards** - Turn SQL queries into dashboards to track custom agent metrics
- **Prompt playground** - Iterate on prompts without touching codebase; test new prompts and validate improvements

## Quick Start Guide
1. Sign up at laminar.sh or self-host via Docker (`docker compose up -d`)
2. Create a project and generate a project API key
3. Install the SDK:
   - **JavaScript/TypeScript**: `npm add @lmnr-ai/lmnr`
   - **Python**: `pip install --upgrade 'lmnr[all]'`
4. Initialize Laminar at top of your project:
   ```javascript
   import { Laminar } from '@lmnr-ai/lmnr';
   Laminar.initialize({ projectApiKey: process.env.LMNR_PROJECT_API_KEY });
   ```
5. Use `observe` wrapper to trace function inputs/outputs
6. View traces in the Laminar dashboard at your project URL

## Use Cases
- Monitoring AI agents in production and understanding failure modes
- Creating and running evaluations to improve agent performance
- Debugging long-running agent workflows with real-time tracing
- Tracking LLM costs across providers (OpenAI, Anthropic, Gemini, etc.)
- Browser automation agent observability (Browser Use, Stagehand, Playwright)
- Building high-quality evaluation datasets with labeling workflows
- Comparing evaluation runs to catch regressions before deployment

## Technical Details
- **Pricing Model**: 
  - Free: $0/month (1GB data, 15-day retention, 1 team member)
  - Hobby: $25/month (2GB included + $2/GB, 30-day retention, 2 members)
  - Pro: $50/month (5GB included + $2/GB, 90-day retention, 3 members + $25/additional)
  - Enterprise: Custom pricing with on-premise deployment
- **Platform Support**: Cloud-hosted (web) or self-hosted via Docker Compose
- **Integration Options**: OpenTelemetry, LangChain/LangGraph, CrewAI, Vercel AI SDK, LiteLLM, Browser Use, Stagehand, Playwright, OpenAI, Anthropic, Gemini, Mistral, AWS Bedrock, Groq
- **Data Export**: SQL API access to all platform data; export to datasets

## Resources
- [Official Website](https://laminar.sh)
- [Documentation](https://docs.lmnr.ai)
- [GitHub Repository](https://github.com/lmnr-ai/lmnr)
- [Discord Community](https://discord.gg/nNFUUDAKub)
- [Status Page](https://status.laminar.sh)
- [Y Combinator Profile](https://www.ycombinator.com/companies/laminar)

## Notes & Considerations
Laminar is fully open-source and can be self-hosted for complete data control. The platform uses OpenTelemetry standards, making it compatible with existing observability infrastructure. Data retention varies by plan (15-90 days on cloud). For self-hosting, the lightweight Docker Compose setup is suitable for quickstart/lightweight usage, while `docker-compose-full.yml` is recommended for production environments. Local self-hosted UI accessible at `http://localhost:5667`.
