---
title: Tool Note - Botasaurus
vendor: Omkar Cloud
date: 202511100850
categories: [webScraping, automation, pythonFramework, botDetection, dataExtraction, scraping]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/omkarcloud/botasaurus
documentation: https://github.com/omkarcloud/botasaurus
type: tool
---

# Botasaurus - All-in-One Undefeatable Web Scraping Framework

## Overview
Botasaurus is a comprehensive Python-based web scraping framework designed to bypass advanced bot detection systems including Cloudflare WAF, DataDome, and Fingerprint. It provides humanized browser automation, request-based scraping, and utilities for building production-ready scrapers with minimal code. The framework excels at creating both dataset scrapers and real-time scrapers while offering up to 97% savings on proxy costs through intelligent request management.

## Core Features
- **Undetectable Browser Automation**: Bypasses Cloudflare, DataDome, Fingerprint, and other bot detection systems with human-like behavior and mouse movements
- **Dual Scraping Modes**: Supports both browser-based (@browser) and lightweight HTTP request-based (@request) scraping with intelligent caching
- **UI & Desktop App Generation**: Transform scrapers into web applications or cross-platform desktop apps (Windows, Mac, Linux) with minimal configuration
- **Cost Optimization**: Reduce proxy bandwidth usage by up to 97% using browser fetch requests instead of full page loads
- **Built-in Caching & Parallelization**: Automatic result caching, parallel execution support, and asynchronous queue processing for faster scraping
- **Profile Management**: Tiny profiles (1KB each) for managing hundreds of browser sessions with cookie persistence across platforms
- **Extension Support**: Load any Chrome extension with one line of code, including ad blockers and CAPTCHA solvers
- **Production-Ready Utilities**: Sitemap parsing, link filtering, data cleaning, Excel/JSON/CSV export, and error handling built-in

## Quick Start Guide
1. **Install Botasaurus**: Run `python -m pip install --upgrade botasaurus` in your terminal
2. **Create Project Directory**: `mkdir my-botasaurus-project && cd my-botasaurus-project`
3. **Create First Scraper**: Create `main.py` with basic browser or request decorator
   ```python
   from botasaurus.browser import browser, Driver
   
   @browser
   def scrape_heading(driver: Driver, data):
       driver.get("https://www.omkar.cloud/")
       heading = driver.get_text("h1")
       return {"heading": heading}
   
   scrape_heading()
   ```
4. **Run Scraper**: Execute `python main.py` - results auto-save to `output/scrape_heading.json`
5. **Add UI (Optional)**: Clone starter template for web interface: `git clone https://github.com/omkarcloud/botasaurus-starter`
6. **Scale with Options**: Configure proxies, parallelization, caching, and profiles via decorator parameters

## Use Cases
- **E-commerce Data Extraction**: Scrape product listings, prices, and reviews from protected sites
- **SERP & Search Data**: Build real-time Google Maps, DuckDuckGo, or search result scrapers
- **Lead Generation**: Extract business contacts, social profiles, and company data at scale
- **Price Monitoring**: Track competitor pricing across multiple platforms with scheduled scraping
- **Content Aggregation**: Gather articles, blog posts, or social media content using sitemap utilities
- **Academic Research**: Collect large datasets from scholarly databases and publication sites
- **Real Estate & Listings**: Scrape property data, rental listings, and market information
- **Document Extraction**: Build desktop extractors for PDFs, Excel files, and structured documents

## Technical Details
- **Pricing Model**: Free and open source (MIT-like license). No subscription fees or usage limits. Optional paid proxy services recommended for production (IPRoyal ~$7/GB, BrightData ~$0.6/GB)
- **Platform Support**: Python 3.7+ required. Works on Windows, macOS, and Linux. Node.js required for proxy authentication with SSL
- **Integration Options**: REST API generation, Chrome DevTools Protocol (CDP), BeautifulSoup4 integration, custom Chrome extensions, Capsolver for CAPTCHAs, AWS S3 upload, PostgreSQL support
- **Data Export**: JSON, Excel (.xlsx), CSV, HTML, and NDJSON formats. Built-in utilities for data cleaning, deduplication, and transformation

## Resources
- [Official Website](https://www.omkar.cloud/)
- [GitHub Repository](https://github.com/omkarcloud/botasaurus)
- [Documentation](https://github.com/omkarcloud/botasaurus)
- [Starter Template](https://github.com/omkarcloud/botasaurus-starter)
- [Desktop Extraction Tutorial](https://www.omkar.cloud/botasaurus/docs/botasaurus-desktop/quick-start)
- [Advanced Guide](https://github.com/omkarcloud/botasaurus/blob/master/advanced.md)
- [Kubernetes Scaling Guide](https://github.com/omkarcloud/botasaurus/blob/master/run-scraper-in-kubernetes.md)
- [GitHub Discussions](https://github.com/omkarcloud/botasaurus/discussions)

## Notes & Considerations
**Proxy Usage**: Only use proxies when encountering IP blocks. Most scrapers work fine on home Wi-Fi with Botasaurus's humanized browsing. Residential proxies (not datacenter) required for heavily protected sites. **Cloudflare Bypass**: Use `bypass_cloudflare=True` parameter and `google_get()` method for Cloudflare-protected sites. Avoid headless mode for protected sites. **Production Best Practices**: Separate HTML scraping and data extraction functions for easier cache management and debugging. Use tiny profiles instead of full Chrome profiles to save disk space (1KB vs 100MB per profile). **Detection Avoidance**: Enable human mode (`driver.enable_human_mode()`) for realistic mouse movements. Add random delays between actions. Remove `--no-default-browser-check` argument if detected. **Caching Strategy**: Cache both HTML responses and extracted data separately to avoid re-scraping when adding new data points or fixing selectors. **VM Deployment**: Google Cloud offers $300 free credit. Use N1 series with standard persistent disk for cost optimization. Enable virtual display (`enable_xvfb_virtual_display=True`) for headful browsers in VMs. **Legal Compliance**: Users are responsible for ensuring compliance with local and international laws regarding data scraping, copyright, and privacy.
