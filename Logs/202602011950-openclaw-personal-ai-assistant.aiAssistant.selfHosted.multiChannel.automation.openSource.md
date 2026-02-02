---
title: Tool Note - OpenClaw
vendor: OpenClaw
date: 202602011950
categories: [aiAssistant, selfHosted, multiChannel, automation, openSource, voiceAI]
pricing: free
platforms: [mac, linux, windows, ios, android, web]
source: https://openclaw.ai
documentation: https://docs.openclaw.ai
type: tool
---

# OpenClaw - Personal AI Assistant You Run on Your Own Devices

## Overview

OpenClaw is an open-source, local-first personal AI assistant that connects to your existing messaging channels (WhatsApp, Telegram, Slack, Discord, Signal, iMessage, Microsoft Teams, and more). It runs a Gateway control plane on your device, supports voice wake/talk mode on macOS/iOS/Android, browser automation, cron jobs, multi-agent routing, and a live Canvas workspace. Think of it as your always-on AI assistant that lives where you already communicate.

## Core Features

- **Multi-channel inbox** — WhatsApp, Telegram, Slack, Discord, Google Chat, Signal, iMessage, BlueBubbles, Microsoft Teams, Matrix, Zalo, WebChat all in one assistant
- **Local-first Gateway** — single WebSocket control plane for sessions, channels, tools, and events running on your hardware
- **Voice Wake + Talk Mode** — always-on speech recognition with wake words and push-to-talk on macOS/iOS/Android, powered by ElevenLabs TTS
- **Browser automation** — dedicated Chrome/Chromium control with CDP snapshots, actions, and uploads
- **Live Canvas + A2UI** — agent-driven visual workspace for rendering interactive UI
- **Multi-agent routing** — route inbound channels/accounts to isolated agents with separate workspaces
- **Companion apps** — macOS menu bar app, iOS node, Android node with camera, screen recording, and notifications
- **Skills platform** — bundled, managed, and workspace skills with install gating and a community hub (ClawhHub)
- **Cron, webhooks, Gmail Pub/Sub** — built-in automation for scheduled tasks and event-driven workflows
- **Security-first DM access** — pairing-based DM policy by default, allowlists, and doctor diagnostics

## Quick Start Guide

1. Ensure Node.js ≥22 is installed on your system
2. Install globally: `npm install -g openclaw@latest` (or `pnpm add -g openclaw@latest`)
3. Run the onboarding wizard: `openclaw onboard --install-daemon`
4. The wizard walks through gateway setup, workspace config, channel pairing, and skills installation
5. Start the gateway: `openclaw gateway --port 18789 --verbose`
6. Connect your first channel (e.g., Telegram via BotFather, or WhatsApp via QR code)
7. Send your first message: `openclaw agent --message "Hello!" --thinking high`

## Use Cases

- Personal AI assistant accessible from any messaging platform you already use
- Automated daily briefings (weather, email summaries, calendar events, news monitoring)
- Browser automation for web research, form filling, and data extraction
- Voice-controlled assistant on macOS/iOS/Android with wake word detection
- Home automation hub with camera access, screen recording, and device notifications
- Scheduled tasks and reminders via cron jobs delivered to any channel
- Multi-agent setups for different contexts (work agent, personal agent, group chat agent)

## Technical Details

- **Pricing Model:** Free and open-source (MIT license). Requires your own LLM API keys or subscriptions (Anthropic Claude Pro/Max recommended, OpenAI also supported)
- **Platform Support:** macOS, Linux, Windows (via WSL2), iOS (node app), Android (node app), Web (WebChat)
- **Integration Options:** WebSocket API, webhooks, Gmail Pub/Sub, MCP servers, Tailscale Serve/Funnel for remote access
- **Data Export:** All data stored locally; session transcripts in JSONL; markdown-based memory and workspace files
- **Runtime:** Node.js ≥22, works with npm, pnpm, or bun
- **Recommended Model:** Anthropic Pro/Max (100/200) + Claude Opus 4.5 for long-context strength and prompt-injection resistance

## Resources

- [Official Website](https://openclaw.ai)
- [Documentation](https://docs.openclaw.ai)
- [Getting Started Guide](https://docs.openclaw.ai/start/getting-started)
- [DeepWiki](https://deepwiki.com/openclaw/openclaw)
- [GitHub Repository](https://github.com/openclaw/openclaw)
- [Community Discord](https://discord.gg/clawd)
- [Skills Marketplace (ClawHub)](https://clawhub.com)
- [Showcase](https://docs.openclaw.ai/start/showcase)
- [FAQ](https://docs.openclaw.ai/start/faq)
- [Docker Install](https://docs.openclaw.ai/install/docker)
- [Nix Mode](https://github.com/openclaw/nix-clawdbot)

## Notes & Considerations

OpenClaw is designed as a single-user, personal assistant — not a multi-tenant SaaS. It connects to real messaging surfaces, so inbound DMs are treated as untrusted input by default (pairing mode). The Gateway can run on a remote Linux VPS with Tailscale for always-on access while device nodes handle local actions (camera, notifications). WSL2 is strongly recommended for Windows users. While any LLM model is supported, Anthropic's Claude models are recommended for best results. Community skills can be discovered at ClawHub, and the onboarding wizard (`openclaw onboard`) is the preferred setup path.
