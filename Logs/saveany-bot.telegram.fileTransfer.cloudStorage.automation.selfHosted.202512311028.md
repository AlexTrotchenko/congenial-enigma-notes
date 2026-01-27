---
title: Tool Note - SaveAny-Bot
vendor: krau
date: 202512311028
categories: [telegram, fileTransfer, cloudStorage, automation, selfHosted, docker]
pricing: free
platforms: [linux, docker]
source: https://github.com/krau/SaveAny-Bot
documentation: https://sabot.unv.app/en/
type: tool
---

# SaveAny-Bot - Save Telegram Files to Any Storage Backend

## Overview
SaveAny-Bot is a self-hosted Telegram bot that enables saving any file type from Telegram to various storage backends including Alist, S3, WebDAV, and local disk. It uniquely supports bypassing Telegram's "restrict saving content" limitation and can automatically watch chats to save files based on custom rules and filters.

## Core Features
- Multi-format support for documents, videos, photos, stickers, and Telegraph articles
- Bypass Telegram's restrict saving content protection to download protected media
- Multiple storage backends: Alist, S3, WebDAV, local filesystem, and Telegram re-upload
- Streaming transfer for efficient handling of large files without local storage
- Auto-watch specified chats with customizable filters for automatic saving
- JS parser plugins to extend functionality and save files from external websites
- Multi-user support with per-user storage configurations and access control
- Automatic file organization based on configurable storage rules

## Quick Start Guide
1. Create a new bot via @BotFather on Telegram and obtain the bot token
2. Get your Telegram account ID (use @userinfobot or similar)
3. Create a `config.toml` file with bot token, user ID, and storage configuration
4. Run via Docker: `docker run -d --name saveany-bot -v ./config.toml:/app/config.toml -v ./downloads:/app/downloads ghcr.io/krau/saveany-bot:latest`
5. Start the bot in Telegram and forward files or send links to save

## Use Cases
- Downloading files from Telegram channels with restricted saving
- Archiving media from Telegram to personal cloud storage (S3, WebDAV)
- Automated backup of specific Telegram chats
- Building a personal media library from Telegram content
- Integrating Telegram file downloads with Alist media server
- Downloading Telegraph articles and embedded media

## Technical Details
- **Pricing Model**: Free and open source (AGPL-3.0 license)
- **Platform Support**: Self-hosted via Docker or binary (Linux primary, Go-based cross-platform)
- **Integration Options**: Alist API, S3-compatible storage, WebDAV servers, local filesystem
- **Data Export**: Files saved directly to configured storage backends in original format

## Resources
- [Official Website](https://sabot.unv.app)
- [Documentation](https://sabot.unv.app/en/)
- [GitHub Repository](https://github.com/krau/SaveAny-Bot)
- [Configuration Guide](https://sabot.unv.app/en/deployment/configuration/)
- [Telegram Support Group](https://t.me/ProjectSaveAny)
- [GitHub Discussions](https://github.com/krau/saveany-bot/discussions)

## Notes & Considerations
Requires a Telegram API bot token from @BotFather. For bypassing restricted content, the bot uses Telegram's MTProto protocol via gotd library. Docker deployment is recommended for easier management. Multiple Dockerfile variants available (standard, micro, pico) for different image size requirements. Written in Go (98.2%) with JavaScript plugin support. Consider Telegram's terms of service when using the restrict bypass feature. Proxy support (SOCKS5) available for regions with Telegram access restrictions.
