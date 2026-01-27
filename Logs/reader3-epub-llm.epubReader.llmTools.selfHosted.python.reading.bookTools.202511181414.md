---
title: Tool Note - Reader3
vendor: Andrej Karpathy
date: 202511181414
categories: [epubReader, llmTools, selfHosted, python, reading, bookTools]
pricing: free
platforms: [web, windows, mac, linux]
source: https://github.com/karpathy/reader3
documentation: https://github.com/karpathy/reader3
type: tool
---

# Reader3 - EPUB Reader for LLM-Assisted Reading

## Overview
Reader3 is a lightweight, self-hosted EPUB reader designed to facilitate reading books together with LLMs. It displays EPUB books one chapter at a time, making it easy to copy and paste chapter contents to your favorite LLM for discussion, analysis, or comprehension assistance. The tool emphasizes simplicity with a local library system managed through file directories.

## Core Features
- Chapter-by-chapter EPUB rendering for easy content extraction
- Local library management through simple folder structure
- Self-hosted web interface accessible via localhost
- Minimal dependencies using Python's uv package manager
- Simple book addition by processing EPUB files into data directories
- Clean interface optimized for reading and copying text

## Quick Start Guide
1. Install uv package manager from https://docs.astral.sh/uv/
2. Clone or download Reader3 from GitHub repository
3. Download an EPUB book (e.g., from Project Gutenberg) to the reader3 directory
4. Run `uv run reader3.py yourbook.epub` to register book to library
5. Start server with `uv run server.py`
6. Visit http://localhost:8123 to access your library and start reading

## Use Cases
- Reading classic literature with LLM comprehension support
- Analyzing book chapters with AI for deeper understanding
- Learning foreign languages by discussing text with LLMs
- Academic study of texts with AI-assisted annotations
- Book club preparation with AI-generated discussion points

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: Any system with Python and uv (Windows, Mac, Linux)
- **Integration Options**: Manual copy-paste to any LLM interface (ChatGPT, Claude, etc.)
- **Data Export**: Books stored as processed data directories, original EPUB preserved

## Resources
- [GitHub Repository](https://github.com/karpathy/reader3)
- [Project Gutenberg (Free EPUBs)](https://www.gutenberg.org/)
- [uv Package Manager](https://docs.astral.sh/uv/)
- [Original Announcement](https://x.com/karpathy/status/1990577951671509438)

## Notes & Considerations
This is an intentionally minimal proof-of-concept that the author has stated will not be actively maintained or supported. Users are encouraged to modify the code to suit their needs using LLM assistance. Book management is handled through the filesystem—delete a book's data folder to remove it from your library. Requires manual copy-paste workflow to LLMs rather than direct API integration.
