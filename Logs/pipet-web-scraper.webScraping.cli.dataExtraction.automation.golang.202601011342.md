---
title: Tool Note - Pipet
vendor: bjesus (Yo'av Moshe)
date: 202601011342
categories: [webScraping, cli, dataExtraction, automation, golang, hackerTools]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/bjesus/pipet
documentation: https://github.com/bjesus/pipet#readme
type: tool
---

# Pipet - Swiss-Army Web Scraping for Hackers

## Overview
Pipet is a command-line web scraper that supports HTML parsing, JSON parsing, and client-side JavaScript evaluation via Playwright. Designed for hackers and power users, it leverages familiar tools like curl and Unix pipes to create flexible data extraction workflows. Perfect for tracking shipments, monitoring stock prices, checking ticket availability, or any automated web data extraction task.

## Core Features
- **HTML Parsing**: Uses CSS selectors with whitespace nesting for intuitive data structure definition
- **JSON Parsing**: Leverages GJSON syntax for extracting data from JSON APIs
- **Playwright Integration**: Headless browser support for JavaScript-rendered content
- **Unix Pipes**: Extend functionality by piping output through any command-line tool (htmlq, jq, wc, etc.)
- **Multiple Output Formats**: Plain text with custom separators, JSON output, or Go template rendering
- **Change Monitoring**: Set intervals and trigger commands when scraped data changes
- **Pagination Support**: Automatic next-page following for multi-page scraping

## Quick Start Guide
1. Install via package manager: `brew install pipet` (macOS) or from AUR (Arch Linux)
2. Or compile with Go: `go install github.com/bjesus/pipet/cmd/pipet@latest`
3. Create a `.pipet` file with your scraping definition:
   ```
   curl https://news.ycombinator.com/
   .title .titleline
     span > a
     .sitebit a
   ```
4. Run: `pipet yourfile.pipet`
5. Add `--json` flag for JSON output or create a `.tpl` template file for custom formatting

## Use Cases
- Tracking package shipments and delivery status
- Monitoring concert/event ticket availability
- Stock price and financial data tracking
- Aggregating news headlines from multiple sources
- Monitoring competitor pricing changes
- Extracting structured data from APIs
- Creating custom RSS-like feeds from any website

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: Linux, macOS, Windows (any platform supporting Go)
- **Integration Options**: Unix pipes for unlimited extensibility; works with curl, htmlq, jq, and any CLI tool
- **Data Export**: Plain text, JSON, or custom Go templates; pipe to files for CSV generation
- **Dependencies**: Go for compilation; optional Playwright for JavaScript-heavy sites (auto-downloads headless browser)

## Resources
- [Official Repository](https://github.com/bjesus/pipet)
- [Documentation (README)](https://github.com/bjesus/pipet#readme)
- [Releases & Downloads](https://github.com/bjesus/pipet/releases)
- [Go Package Reference](https://pkg.go.dev/github.com/bjesus/pipet)
- [Homebrew Formula](https://formulae.brew.sh/formula/pipet)
- [AUR Package](https://aur.archlinux.org/packages/pipet-git)
- [Nix Package](https://search.nixos.org/packages?show=pipet)

## Notes & Considerations
Pipet files use a unique syntax where whitespace indentation defines data structure hierarchy. When using curl resources, you can copy requests directly from browser DevTools ("Copy as cURL") to preserve headers, cookies, and authentication. Playwright mode requires a headless browser which Pipet will attempt to auto-download if not present. The `--on-change` flag combined with `--interval` enables powerful monitoring workflows with notification tools like `notify-send`. For complex JSON manipulation, pipe results to `jq` rather than relying solely on GJSON syntax.
