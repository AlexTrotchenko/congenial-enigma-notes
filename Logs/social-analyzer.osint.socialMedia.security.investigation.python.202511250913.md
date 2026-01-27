---
title: Tool Note - Social Analyzer
vendor: Qeeqbox
date: 202511250913
categories: [osint, socialMedia, security, investigation, python, nodeJs]
pricing: free
platforms: [linux, windows, mac, docker]
source: https://github.com/qeeqbox/social-analyzer
documentation: https://github.com/qeeqbox/social-analyzer/wiki
type: tool
---

# Social Analyzer - OSINT Profile Discovery Across 1000+ Social Networks

## Overview
Social Analyzer is an open-source OSINT (Open Source Intelligence) tool that provides API, CLI, and Web App interfaces for analyzing and finding a person's profile across 1000+ social media websites. It employs multiple detection modules with a confidence rating system (0-100) to minimize false positives, making it valuable for investigating suspicious activities like cyberbullying, cyber grooming, cyberstalking, and misinformation campaigns.

## Core Features
- Multi-platform profile search across 1000+ social media sites with correlation support
- Confidence-based detection rating (0-100 scale: No-Maybe-Yes) to reduce false positives
- Multiple detection layers including OCR, normal, advanced, and special modes
- Visual profile mapping with force-directed graphs using Ixora visualization
- Metadata and pattern extraction with cross-metadata statistics
- Profile screenshots, title extraction, and website description capture
- Search filtering by Alexa ranking, country, or content type (adult, music, etc.)
- Name analysis including origins, similarity matching, and age estimation
- Custom configuration for user-agent, proxy, timeout, and implicit wait settings

## Quick Start Guide
1. Install dependencies: `sudo apt-get install firefox-esr tesseract-ocr nodejs npm`
2. Clone repository: `git clone https://github.com/qeeqbox/social-analyzer.git`
3. Navigate to directory: `cd social-analyzer`
4. Install packages: `npm install`
5. Start web app: `npm start` (access at http://0.0.0.0:9005/app.html)
6. Or use CLI: `nodejs app.js --username "johndoe"`

### Alternative Python Installation
1. Install via pip: `pip3 install social-analyzer`
2. Run search: `python3 -m social-analyzer --username "johndoe"`
3. Add metadata extraction: `python3 -m social-analyzer --username "johndoe" --metadata`

## Use Cases
- Law enforcement investigations with limited resources
- Cyberbullying and harassment case investigations
- Cyberstalking victim support and evidence gathering
- Misinformation source tracking and attribution
- Background checks and due diligence research
- Digital footprint analysis and personal OSINT audits
- Correlation analysis across multiple usernames

## Technical Details
- **Pricing Model**: Free and open-source (MIT License)
- **Platform Support**: Linux (primary), Windows, macOS; Docker support with grid option for faster processing
- **Integration Options**: Python library import, NodeJS CLI, REST API; integrates with Google API and DuckDuckGo API for extended search
- **Data Export**: JSON output format, log dumps to folder or terminal, screenshot capture of detected profiles

### CLI Options Reference
| Argument | Description |
|----------|-------------|
| `--username` | Target username(s), comma-separated for multi-search |
| `--websites` | Specific sites to check (e.g., youtube, tiktok) |
| `--mode` | fast, slow, or special detection mode |
| `--output` | json or pretty formatted output |
| `--filter` | Filter by good, maybe, or bad confidence |
| `--top` | Limit to top N websites by ranking |
| `--metadata` | Extract additional metadata |
| `--screenshots` | Capture profile screenshots |

## Resources
- [Official Repository](https://github.com/qeeqbox/social-analyzer)
- [Installation Wiki](https://github.com/qeeqbox/social-analyzer/wiki/install)
- [Integration Guide](https://github.com/qeeqbox/social-analyzer/wiki/integration)
- [PyPI Package](https://pypi.org/project/social-analyzer/)

## Notes & Considerations
This tool is designed for local use only and lacks access control mechanisms—do not deploy as a public service. The public detection database differs from versions used by law enforcement. Latest Chrome version required for screenshot functionality. Some modules ending in `-private` require direct contact with the developer for support. For ethical use: ensure compliance with local laws and platform terms of service when conducting investigations.
