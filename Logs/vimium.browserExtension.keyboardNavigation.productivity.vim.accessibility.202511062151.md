---
title: Tool Note - Vimium
vendor: Ilya Sukhar, Phil Crosby, Stephen Blott
date: 202511062151
categories: [browserExtension, keyboardNavigation, productivity, vim, accessibility, openSource]
pricing: free
platforms: [web]
source: https://chromewebstore.google.com/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb
documentation: https://github.com/philc/vimium/blob/master/README.md
type: tool
---

# Vimium - The Hacker's Browser Extension

## Overview
Vimium is a Chrome/Chromium browser extension that provides keyboard shortcuts for navigation and control inspired by Vim. It enables users to browse the web entirely via keyboard commands, eliminating the need for mouse interaction and significantly speeding up browsing workflows. The extension is completely open source, respects privacy, and requires no server communication.

## Core Features
- Vim-style keyboard navigation for scrolling, tab management, and link following
- Link hints system (f/F keys) to open any link via keyboard selection
- Command repetition support (e.g., "5t" opens 5 tabs)
- Omnibar for quick URL, bookmark, and history search (o/O keys)
- Find mode with forward/backward search navigation
- History navigation and tab switching without mouse
- Copy URLs and link addresses via keyboard
- Customizable key bindings and modifier key support

## Quick Start Guide
1. Install Vimium from Chrome Web Store
2. Press "?" on any webpage to view the help dialog with all commands
3. Practice basic scrolling: j (down), k (up), h (left), l (right)
4. Try link hints: press "f" to highlight all clickable links with letter codes
5. Type the letter code to open a link in current tab, or "F" for new tab
6. Use "o" to open the omnibar and search bookmarks/history
7. Press ESC to exit any mode and clear partial commands
8. Visit GitHub README for advanced configuration and key rebinding

## Use Cases
- Speed-reading and research workflows without mouse usage
- Accessibility for users who prefer or require keyboard navigation
- Power user browsing with rapid tab management and navigation
- Reducing repetitive strain from mouse usage
- Navigating paginated content with ]] and [[ commands
- Quickly copying URLs and managing browser history

## Technical Details
- **Pricing Model**: Completely free and open source
- **Platform Support**: Chrome, Chromium-based browsers (Edge, Brave, Opera, Vivaldi)
- **Integration Options**: Standalone extension, no external integrations
- **Data Export**: No data collection; all processing happens locally
- **Version**: 2.3 (Updated July 1, 2025)
- **Size**: 210KiB
- **Privacy**: No data sent to servers, fully local operation

## Resources
- [Chrome Web Store](https://chromewebstore.google.com/detail/vimium/dbepggeogbaibhgnhhndojpepiihcmeb)
- [Documentation](https://github.com/philc/vimium/blob/master/README.md)
- [GitHub Repository](https://github.com/philc/vimium)
- [Changelog](https://github.com/philc/vimium/blob/master/CHANGELOG.md)
- [Support/Issues](https://github.com/philc/vimium/issues)
- [Contact](mailto:vimium-store@googlegroups.com)

## Notes & Considerations
Google does not allow Vimium to run on the Chrome Web Store page or Chrome New Tab page by design. Chrome displays permission warnings about Vimium needing access to all pages, but this is only to inject the keyboard navigation JavaScript—the extension has no server communication and is completely privacy-respecting. Users familiar with Vim will feel immediately at home, but there is a learning curve for those new to modal navigation. Key bindings are fully customizable via the extension options.
