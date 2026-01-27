---
title: Tool Note - CCR-Next (Claude Code Router)
vendor: Darthwares
date: 202601101006
categories: [cli, aiDev, modelRouting, automation, devTools, claudeCode]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/Darthwares/ccr-next
documentation: https://github.com/Darthwares/ccr-next#readme
type: tool
---

# CCR-Next - Multi-Provider Model Router for Claude Code

## Overview
CCR-Next (Claude Code Router) is a command-line tool that enables intelligent routing of AI model requests across multiple providers when using Claude Code. It allows developers to configure and switch between different LLM providers (OpenAI, Azure, Anthropic, Gemini, DeepSeek, OpenRouter) based on routing rules, enabling cost optimization, fallback strategies, and CI/CD integration with custom models.

## Core Features
- **Multi-Provider Support**: Configure multiple AI providers including OpenAI, Azure OpenAI, Anthropic, Google Gemini, DeepSeek, and OpenRouter with a unified interface
- **Smart Routing Rules**: Define routing logic for different scenarios (background tasks to cheaper models, complex tasks to powerful models)
- **Request/Response Transformers**: Modify API payloads for compatibility across different provider APIs with global or model-specific transformers
- **GitHub Actions Integration**: Run Claude Code in CI/CD pipelines with custom model configurations
- **Security Features**: API key authentication (Bearer token or x-api-key) and host restrictions for secure deployment
- **Extensible Plugin System**: Create custom transformers and routing logic via `CUSTOM_ROUTER_PATH` configuration

## Quick Start Guide
1. Install globally via npm:
   ```bash
   npm install -g ccr-next
   ```
2. Add a provider (e.g., OpenAI):
   ```bash
   ccr provider add openai https://api.openai.com/v1/chat/completions YOUR-API-KEY gpt-4.1
   ```
3. Start Claude Code with the router:
   ```bash
   ccr code
   ```
4. Check server status:
   ```bash
   ccr status
   ```
5. Manage the router:
   ```bash
   ccr restart  # After config changes
   ccr stop     # Stop the router
   ```

## Use Cases
- **Cost Optimization**: Route background/simple tasks to cheaper or local models automatically while preserving quality for complex tasks
- **Multi-Model Development**: Switch between providers during development without code changes
- **CI/CD Automation**: Integrate Claude Code into GitHub Actions workflows with `@claude` triggers
- **Enterprise Deployment**: Use Azure OpenAI or private endpoints with security restrictions
- **Fallback Strategies**: Configure backup providers when primary API is unavailable

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: Cross-platform via Node.js/npm (Windows, macOS, Linux)
- **Integration Options**: OpenAI API, Azure OpenAI, Anthropic API, Google Gemini, DeepSeek, OpenRouter, custom endpoints
- **Data Export**: JSON configuration files, portable across environments

### Configuration Options
| Option | Type | Description | Default |
|--------|------|-------------|---------|
| PROXY_URL | string | HTTP proxy for API requests | - |
| LOG | boolean | Enable logging to ~/.claude-code-router.log | false |
| APIKEY | string | API key for authentication | - |
| HOST | string | Server host address | 127.0.0.1 |
| API_TIMEOUT_MS | number | API request timeout in ms | 600000 |
| Providers | array | Model provider configurations | Required |
| Router | object | Routing rules for scenarios | Required |
| CUSTOM_ROUTER_PATH | string | Path to custom routing logic | - |

### Provider Examples
```bash
# OpenAI
ccr provider add openai https://api.openai.com/v1/chat/completions sk-xxxxx gpt-4o,gpt-4o-mini,o1

# Azure OpenAI
ccr provider add azure-openai "https://YOUR-RESOURCE.openai.azure.com/openai/deployments/YOUR-DEPLOYMENT/chat/completions?api-version=2024-08-01-preview" "your-api-key" "gpt-4o"

# Google Gemini
ccr provider add gemini https://generativelanguage.googleapis.com/v1beta/models/ your-api-key gemini-2.0-flash,gemini-1.5-pro

# Anthropic
ccr provider add anthropic https://api.anthropic.com/v1/messages your-api-key claude-3-5-sonnet-latest

# DeepSeek
ccr provider add deepseek https://api.deepseek.com/chat/completions your-api-key deepseek-chat,deepseek-reasoner

# OpenRouter (with transformer)
# Requires manual config.json edit with transformer settings
```

## Resources
- [Official Repository](https://github.com/Darthwares/ccr-next)
- [NPM Package](https://www.npmjs.com/package/ccr-next)
- [Configuration Examples](https://github.com/Darthwares/ccr-next#configuration)
- [Provider Documentation](https://github.com/Darthwares/ccr-next#provider-examples)

## Notes & Considerations
- Configuration file is stored at `~/.claude-code-router/config.json`
- Without APIKEY set, the server is restricted to localhost (127.0.0.1) for security
- Transformers are essential when using providers like OpenRouter that require request/response modification
- Restart the router after any configuration changes with `ccr restart`
- For GitHub Actions integration, configure the workflow to trigger on `@claude` mentions in issue comments
- Current npm version: 1.1.6
