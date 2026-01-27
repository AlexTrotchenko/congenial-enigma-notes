---
title: Tool Note - Pytrend-CLI
vendor: Evyatar Meged
date: 202601052212
categories: [cli, python, github, webScraping, developerTools, automation]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/evyatarmeged/github-trending
documentation: https://github.com/evyatarmeged/github-trending#readme
type: tool
---

# Pytrend-CLI - GitHub Trending Repositories & Developers from Your Terminal

## Overview
Pytrend-CLI is a command line tool for fetching real-time trending repositories and developers from GitHub directly in your terminal. It supports filtering by 25+ programming languages and time periods (daily, weekly, monthly), with output options including JSON and XML export for automation workflows.

## Core Features
- Fetch top 25 trending repositories from GitHub with a single command
- View trending developers using the `--dev` flag
- Filter results by programming language (25+ supported including Python, JavaScript, Rust, Go, etc.)
- Time-based filtering for daily, weekly, or monthly trends
- Export data to JSON format for programmatic use
- Export data to XML format for integration with other tools
- Silent mode to suppress stdout when saving to files

## Quick Start Guide
1. Ensure Python 3.5+ is installed on your system
2. Install via pip: `pip install pytrend-cli`
3. Run basic command: `pytrend` (shows daily trending repos, all languages)
4. Filter by language: `pytrend --language python`
5. View weekly trends: `pytrend --weekly`
6. Export to JSON: `pytrend --json --silent`

## Use Cases
- Discovering new and popular open source projects daily
- Tracking trending repositories in your preferred programming language
- Monitoring developer community trends for research
- Automating GitHub trend data collection via cron jobs
- Building dashboards or reports on GitHub ecosystem activity
- Staying updated on emerging tools and libraries in specific tech stacks

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: Cross-platform CLI (Windows, macOS, Linux) - requires Python 3.5+
- **Integration Options**: JSON/XML export for pipeline integration, can be combined with cron for automation
- **Data Export**: JSON and XML file formats supported via `--json` and `--xml` flags

## CLI Options Reference
```
Usage: pytrend [OPTIONS]

Options:
  -l, --language TEXT   Display repositories for this programming language
  -d, --dev             Get trending developers instead of repositories
  -w, --weekly          Display trending repositories from the past week
  -m, --monthly         Display trending repositories from the past month
  -j, --json            Save data to a JSON file
  -x, --xml             Save data to an XML file
  -s, --silent          Do not write to stdout
  --help                Show this message and exit
```

## Supported Languages
Python, JavaScript, Java, Ruby, PHP, C++, C, C#, Go, Swift, Objective-C, TypeScript, Scala, Shell, Rust, CoffeeScript, Haskell, Groovy, Lua, Elixir, Perl, Kotlin, Clojure, HTML, and more.

## Resources
- [GitHub Repository](https://github.com/evyatarmeged/github-trending)
- [PyPI Package](https://pypi.org/project/pytrend-cli/)
- [Issue Tracker](https://github.com/evyatarmeged/github-trending/issues)

## Notes & Considerations
Last updated December 2017 (version 1.19), so some features may need verification against current GitHub trending page structure. Scrapes GitHub's trending page directly, so functionality depends on GitHub's HTML structure remaining consistent. Language support data is based on GitHut statistics from Q3 2017. For more actively maintained alternatives, consider `git-trend` or `gtrending` which offer similar functionality with more recent updates.
