---
created: 2026-01-24T12:34:38-08:00
modified: 2026-01-24T12:36:45-08:00
---

# Tool Note - Internet Archive Downloader

title: Tool Note - Internet Archive Downloader
vendor: elementdavv
date: 202601240955
categories: [browserExtension, ebooks, archiving, pdf, openSource, digitalLibrary]
pricing: free
platforms: [chrome, firefox, edge, brave, vivaldi, opera]
source: https://github.com/elementdavv/internet_archive_downloader
documentation: https://github.com/elementdavv/internet_archive_downloader#readme
type: tool
Internet Archive Downloader - Download Borrowed Books from Archive.org & HathiTrust
Overview
Internet Archive Downloader is a browser extension for Chrome and Firefox that enables downloading books from Internet Archive (archive.org) and HathiTrust Digital Library. It works by fetching book pages and constructing PDF files on-the-fly with disk streaming, allowing it to handle books with thousands of pages efficiently without consuming excessive memory.
Core Features
Download borrowed books as PDF files with embedded text (searchable PDFs)
Download books as individual image files (JPEG/PNG) with separate text file
Parallel download support for multiple books simultaneously
Memory-efficient streaming architecture handles large books easily
Configurable quality levels and download options
Preset download ranges for partial book downloads
Automatic book return option upon download completion
Quick Start Guide
Chrome/Edge: Download latest .crx file from releases, enable Developer Mode in Extensions, drag-and-drop CRX file
Firefox: Navigate to releases page with Firefox, click latest .xpi file to install directly
Alternative: Install from Edge Addons or Mozilla Addons
For Firefox, grant site permissions in extension's "Permissions" tab
Navigate to archive.org, borrow a book, and click the new "Download" button that appears
Configure options by clicking extension icon in toolbar
Use Cases
Downloading borrowed library books from Internet Archive for offline reading
Archiving public domain books from HathiTrust Digital Library
Creating searchable PDFs from digitized book collections
Downloading specific page ranges for research purposes
Batch downloading multiple books for academic projects
Technical Details
Pricing Model: Free and open source (AGPL-3.0 license)
Platform Support: Chromium 90+ (Chrome, Edge, Brave, Vivaldi, Opera, Kiwi), Firefox 115+
Integration Options: Works directly with archive.org and hathitrust.org websites
Data Export: PDF with embedded text, or ZIP containing JPEG/PNG images plus text file
Resources
Official GitHub Repository
Installation & Documentation
Releases / Downloads
Video Tutorial (YouTube)
Edge Add-ons Store
Firefox Add-ons Store
Privacy Policy
Notes & Considerations
Important Disclaimer: This tool is intended for study purposes only. Downloading borrowed books with limited lending periods may violate terms of service. The developer recommends deleting downloaded books within 48 hours. For Windows/macOS, additional registry or profile files may be needed to enable CRX installation in Chrome-based browsers. HathiTrust downloads may pause every ~100 pages due to server restrictions—simply wait and continue. Only download from the official GitHub repository to avoid malicious copies.
