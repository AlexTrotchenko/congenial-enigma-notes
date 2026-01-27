---
title: Tool Note - n8n Workflows Collection
vendor: Zie619 (Community)
date: 202411181412
categories: [automation, workflows, n8n, selfHosted, openSource, integrations]
pricing: free
platforms: [web, windows, mac, linux]
source: https://github.com/Zie619/n8n-workflows
documentation: https://github.com/Zie619/n8n-workflows#documentation
type: tool
---

# n8n Workflows Collection - Searchable Repository of 4,343 n8n Automation Workflows

## Overview
This is a comprehensive community-curated collection of over 4,300 n8n workflow templates with a modern searchable web interface. It provides instant access to pre-built automation workflows across 15+ categories and 365+ service integrations, allowing users to find, download, and import workflow JSON files directly into their n8n instances.

## Core Features
- Full-text search with SQLite FTS5 for 100x faster results across names, descriptions, and nodes
- 4,343 workflow JSON files organized by category (Marketing, Sales, DevOps, etc.)
- Modern web UI with dark/light mode and mobile responsiveness
- Multi-platform Docker support (linux/amd64 and linux/arm64)
- RESTful API endpoints for programmatic access to workflows
- Advanced filtering by complexity, trigger type, and service integrations

## Quick Start Guide
1. Visit [zie619.github.io/n8n-workflows](https://zie619.github.io/n8n-workflows) for instant browser access
2. Use smart search to find workflows by keyword, service, or use case
3. Filter by category (15+ options) or complexity level
4. Download workflow JSON file directly
5. Import JSON into your n8n instance via Import Workflow option

### Self-Hosting (Optional)
```bash
# Docker method (quickest)
docker run -p 8000:8000 zie619/n8n-workflows:latest

# Or local Python installation
git clone https://github.com/Zie619/n8n-workflows.git
cd n8n-workflows
pip install -r requirements.txt
python run.py
```

## Use Cases
- Finding pre-built automation templates for common business processes
- Learning n8n workflow patterns and best practices
- Accelerating automation development with ready-to-use integrations
- Discovering workflow ideas for marketing, sales, DevOps, and more
- Building a library of reusable automation components

## Technical Details
- **Pricing Model**: Completely free and open source (MIT License)
- **Platform Support**: GitHub Pages (web), Docker, Python 3.9+ for self-hosting
- **Integration Options**: REST API with endpoints for search, stats, categories, and export
- **Data Export**: Direct JSON download, bulk export via API

## Resources
- [Official Website](https://zie619.github.io/n8n-workflows)
- [GitHub Repository](https://github.com/Zie619/n8n-workflows)
- [Docker Hub Image](https://hub.docker.com/r/zie619/n8n-workflows)
- [API Documentation](https://github.com/Zie619/n8n-workflows#api-endpoints)
- [Issues & Bug Reports](https://github.com/Zie619/n8n-workflows/issues)
- [Discussions](https://github.com/Zie619/n8n-workflows/discussions)

## Notes & Considerations
This is a community collection, not an official n8n product. Workflows may require updates for compatibility with your n8n version. Some workflows may need API credentials or service-specific configuration before use. Requires a working n8n instance to actually run the workflows. Self-hosting requires Python 3.9+ and 100MB free disk space.
