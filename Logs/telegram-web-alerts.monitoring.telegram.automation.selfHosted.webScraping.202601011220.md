---
title: Tool Note - Telegram Web Alerts Bot
vendor: Joostafer
date: 202601011220
categories: [monitoring, telegram, automation, selfHosted, webScraping, notifications]
pricing: free
platforms: [linux, windows, mac]
source: https://github.com/Joostafer/telegram-web-alerts
documentation: https://github.com/Joostafer/telegram-web-alerts#readme
type: tool
---

# Telegram Web Alerts Bot - Web Page Monitoring via Telegram

## Overview
Telegram Web Alerts is a lightweight Go-based bot that monitors web pages for HTTP status changes and HTML element count variations, sending real-time alerts to Telegram. Ideal for tracking product availability, detecting page downtime, or monitoring content changes without manual checks. Self-hosted and open source under MIT license.

## Core Features
- **Web Page Monitoring**: Tracks HTTP status codes (200, 404, 500, etc.) and detects when pages go up or down
- **HTML Element Counting**: Monitors specific CSS classes to detect content changes (e.g., product listings, buttons)
- **Sustained Change Detection**: Alerts only on confirmed changes, filtering out temporary blips or network hiccups
- **Multilingual Alerts**: Supports English, Ukrainian, Spanish, German, and French message templates
- **Real-time Telegram Notifications**: Instant push notifications to specified Telegram chat
- **Configurable Check Intervals**: Set custom delay between monitoring cycles via environment variables

## Quick Start Guide
1. Clone the repository: `git clone https://github.com/Joostafer/telegram-web-alerts.git`
2. Create a `.env` file with your Telegram bot token, chat ID, base URL, delay (seconds), and language
3. Configure `pages_config.json` with URLs and CSS classes to monitor
4. Customize `messages.json` alert templates if needed
5. Build with `go build -o telegram_web_alerts`
6. Run with `./telegram_web_alerts`

## Use Cases
- **E-commerce Availability Tracking**: Monitor product pages for stock changes by watching "buy" button elements
- **Uptime Monitoring**: Get instant alerts when critical pages return 404/500 errors
- **Content Change Detection**: Track blog posts, listings, or catalog items for updates
- **Price Drop Alerts**: Monitor specific page elements that indicate pricing changes
- **Competitor Monitoring**: Track competitor pages for new products or content additions

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: Any platform supporting Go (Linux, Windows, macOS) - self-hosted
- **Integration Options**: Telegram Bot API, JSON configuration files
- **Data Export**: N/A (stateless monitoring with Telegram output)
- **Language**: Written in Go (100%)
- **Dependencies**: Requires Go runtime for building; Telegram Bot Token required

## Resources
- [GitHub Repository](https://github.com/Joostafer/telegram-web-alerts)
- [Documentation / README](https://github.com/Joostafer/telegram-web-alerts#readme)
- [Environment Config Example](https://github.com/Joostafer/telegram-web-alerts/blob/main/.env_example)
- [Pages Config Example](https://github.com/Joostafer/telegram-web-alerts/blob/main/pages_config%20example.json)
- [MIT License](https://github.com/Joostafer/telegram-web-alerts/blob/main/LICENSE)

## Notes & Considerations
Requires self-hosting and Go environment for building. You must create a Telegram bot via BotFather and obtain a chat ID for notifications. The bot includes `/status` command to check all monitored pages and `/restart` to reload configuration. Small project with limited community (5 stars, 2 commits) - suitable for simple monitoring needs but may require customization for complex use cases. No official Docker image provided; consider containerizing for easier deployment.
