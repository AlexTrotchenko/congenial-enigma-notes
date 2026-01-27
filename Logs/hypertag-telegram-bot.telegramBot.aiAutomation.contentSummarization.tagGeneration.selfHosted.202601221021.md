---
title: Tool Note - HyperTAG
vendor: Mostafa Abbasi
date: 202601221021
categories: [telegramBot, aiAutomation, contentSummarization, tagGeneration, selfHosted, llmIntegration]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/Mostafa-Abbasi/HyperTAG
documentation: https://github.com/Mostafa-Abbasi/HyperTAG/tree/main/docs
type: tool
---

# HyperTAG - AI-Generated Tags and Summaries for Telegram Messages

## Overview
HyperTAG is an open-source Telegram bot that leverages advanced AI models (Google Gemini, OpenRouter, Ollama, or TextRazor) to automatically generate context-aware tags and summaries for messages. It analyzes text content, extracts information from embedded URLs, and can retrieve YouTube video captions for enhanced tag recommendations. Perfect for content creators, channel administrators, and anyone wanting to organize Telegram messages with intelligent tagging and summarization.

## Core Features
- **Text Analysis**: Analyzes message text content to recommend relevant contextual tags
- **Link Analysis**: Extracts and processes main content from up to 2 URLs per message to enhance tag recommendations
- **YouTube Analysis**: Retrieves video captions from YouTube links for better tag generation
- **Summarization**: Creates concise summaries of the first link in messages (web pages or YouTube videos)
- **Channel Integration**: Automatically generates tags and optional summaries for channel posts when added as admin
- **Multi-LLM Support**: Choose between Google Gemini, OpenRouter-compatible APIs, local Ollama models, or TextRazor
- **Translation Support**: Built-in translation feature for multilingual content
- **Proxy Support**: Optional Cloudflare Worker proxy for regions with internet restrictions

## Quick Start Guide
1. Ensure Node.js v18 LTS is installed (use nvm for version management if needed)
2. Clone the repository: `git clone https://github.com/mostafa-abbasi/HyperTAG.git && cd HyperTAG`
3. Install dependencies: `npm install`
4. Create config file: `cp config.env.example config.env`
5. Obtain free API keys: Create Telegram bot via [@BotFather](https://t.me/botfather) and get Gemini key from [Google AI Studio](https://aistudio.google.com)
6. Add `TELEGRAM_API_KEY` and `GEMINI_API_KEYS` to your `config.env` file
7. Start the bot: `npm start`
8. Message your bot on Telegram or add it to a channel as admin

## Use Cases
- Automatically tagging and categorizing Telegram channel posts for better searchability
- Generating quick summaries of shared articles and YouTube videos
- Organizing content in group chats with relevant hashtags
- Content curation workflows for news aggregation channels
- Personal knowledge management through tagged message archives
- Multilingual content processing with translation support

## Technical Details
- **Pricing Model**: Completely free and open-source (MIT License). Requires free API keys from Telegram BotFather and Google AI Studio (1,500 free requests/day with Gemini Flash)
- **Platform Support**: Self-hosted on any system running Node.js v18 LTS (Windows, Mac, Linux). Deployable to VPS, cloud services, or local machines
- **Integration Options**: Supports multiple LLM backends (Gemini API, OpenRouter, Ollama for local models, TextRazor), Cloudflare Worker proxy, configurable rate limits and VIP user tiers
- **Data Export**: SQLite database for user data and settings, fully portable

## Resources
- [Official Repository](https://github.com/Mostafa-Abbasi/HyperTAG)
- [Documentation](https://github.com/Mostafa-Abbasi/HyperTAG/tree/main/docs)
- [Bot Setup Guide](https://github.com/Mostafa-Abbasi/HyperTAG/blob/main/docs/HyperTAG_bot_setup.md)
- [Upgrade Guide](https://github.com/Mostafa-Abbasi/HyperTAG/blob/main/docs/Upgrading-to-a-newer-version.md)
- [Proxy Setup Guide](https://github.com/Mostafa-Abbasi/HyperTAG/blob/main/docs/Cloudflare_worker_proxy_setup.md)
- [Live Bot Demo](https://t.me/HyperTAG_bot)
- [Example Channel](https://t.me/HW_HUB)
- [Developer Channel](https://t.me/Falken_Devlog)

## Notes & Considerations
Node.js version 18 LTS is strictly required due to breaking changes in newer versions affecting project dependencies. The config.env file offers extensive customization including rate limits, tag count, summarization toggles, and admin/VIP user configurations. For regions with internet restrictions (e.g., Iran), the optional Cloudflare Worker proxy feature can route API requests to bypass blocks. Free tier API limits: Gemini Flash allows 1,500 requests/day, OpenRouter free models allow ~200/day, TextRazor allows 500/day, or unlimited with local Ollama models. Current version is v1.1.0 (November 2024).
