---
title: Tool Note - Clawdbot
vendor: Peter Steinberger & Community
date: 202601261735
categories: [aiAssistant, selfHosted, multiChannel, automation, openSource, chatbot]
pricing: free
platforms: [mac, linux, windows, ios, android, web]
source: https://github.com/clawdbot/clawdbot
documentation: https://docs.clawd.bot
type: tool
---

# Clawdbot - Personal AI Assistant for Any Platform

## Overview
Clawdbot is a self-hosted personal AI assistant that runs on your own devices and connects to messaging channels you already use. It provides a unified control plane (Gateway) for managing AI conversations across WhatsApp, Telegram, Slack, Discord, Signal, iMessage, Microsoft Teams, and more. Ideal for users who want a local-first, privacy-focused AI assistant with full control over their data and integrations.

## Core Features
- **Multi-channel inbox**: Connect to 12+ messaging platforms (WhatsApp, Telegram, Slack, Discord, Google Chat, Signal, iMessage, Microsoft Teams, Matrix, Zalo, WebChat)
- **Local-first Gateway**: Single WebSocket control plane for sessions, channels, tools, and events
- **Voice Wake + Talk Mode**: Always-on speech recognition and continuous conversation on macOS/iOS/Android with ElevenLabs
- **Live Canvas + A2UI**: Agent-driven visual workspace that renders dynamic UI
- **Browser control**: Dedicated Chrome/Chromium with CDP control for web automation
- **Skills platform**: Extensible skills system with bundled, managed, and custom workspace skills
- **Multi-agent routing**: Route inbound channels/accounts to isolated agents with per-agent sessions
- **Security defaults**: DM pairing policies and optional Docker sandboxing for non-main sessions

## Quick Start Guide
1. Install Node.js ≥22 and run: `npm install -g clawdbot@latest`
2. Run the onboarding wizard: `clawdbot onboard --install-daemon`
3. Start the Gateway: `clawdbot gateway --port 18789 --verbose`
4. Connect messaging channels via wizard prompts (WhatsApp QR scan, Telegram bot token, etc.)
5. Send your first message: `clawdbot agent --message "Hello Clawdbot" --thinking high`
6. Configure `~/.clawdbot/clawdbot.json` with your preferred AI model (Anthropic Claude recommended)

## Use Cases
- Personal AI assistant accessible via your existing messaging apps
- Unified inbox management across multiple communication platforms
- Voice-controlled smart assistant for macOS/iOS/Android devices
- Automated workflows with cron jobs, webhooks, and Gmail triggers
- Multi-agent collaboration for complex task coordination
- Browser automation and web scraping tasks

## Technical Details
- **Pricing Model**: Completely free and open source (MIT License). Requires paid AI provider subscription (Anthropic Pro/Max or OpenAI recommended)
- **Platform Support**: macOS, Linux, Windows (via WSL2), iOS node, Android node, Web UI
- **Integration Options**: REST/WebSocket API, MCP servers, Tailscale Serve/Funnel, SSH tunnels, webhooks, Gmail Pub/Sub
- **Data Export**: Local-first architecture with all data stored on your devices; workspace files in `~/clawd`

## Resources
- [Official Website](https://clawd.bot)
- [Documentation](https://docs.clawd.bot)
- [Getting Started Guide](https://docs.clawd.bot/start/getting-started)
- [GitHub Repository](https://github.com/clawdbot/clawdbot)
- [Discord Community](https://discord.gg/clawd)
- [Configuration Reference](https://docs.clawd.bot/gateway/configuration)
- [Security Guide](https://docs.clawd.bot/gateway/security)
- [Nix Package](https://github.com/clawdbot/nix-clawdbot)

## Notes & Considerations
Strongly recommended to use Anthropic Pro/Max with Claude Opus 4.5 for best long-context performance and prompt-injection resistance. Windows users must use WSL2 (native Windows not supported). The Gateway runs locally by default but can be exposed via Tailscale or SSH tunnels for remote access. When connecting to real messaging platforms, treat all inbound DMs as untrusted input—default DM pairing policy requires approval codes for unknown senders. Docker sandboxing available for running non-main sessions in isolated containers. 40.6k GitHub stars with active community development.
