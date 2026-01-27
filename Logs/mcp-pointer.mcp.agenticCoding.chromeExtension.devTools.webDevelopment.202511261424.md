---
title: Tool Note - MCP Pointer
vendor: etsd-tech
date: 202511261424
categories: [mcp, agenticCoding, chromeExtension, devTools, webDevelopment, aiTools]
pricing: free
platforms: [chrome, chromiumBrowsers]
source: https://github.com/etsd-tech/mcp-pointer
documentation: https://github.com/etsd-tech/mcp-pointer#readme
type: tool
---

# MCP Pointer - Point at DOM Elements for Agentic Coding Tools

## Overview
MCP Pointer bridges browser DOM selection with AI-powered coding assistants through the Model Context Protocol (MCP). It combines a Chrome extension for visual element selection (Option+Click) with a Node.js MCP server, enabling tools like Claude Code, Cursor, and Windsurf to receive complete textual context about any element you point at—including CSS properties, HTML attributes, React component info, and positioning data.

## Core Features
- **Option+Click Selection**: Hold Option (Alt on Windows) and click any DOM element to capture it instantly
- **Complete Element Data**: Extracts text content, CSS classes, HTML attributes, exact positioning, and computed styling
- **Dynamic Context Control**: Configurable detail levels—request visible-only text, suppress text entirely, or dial CSS from none to full computed styles
- **React Component Detection**: Identifies component names and source files via React Fiber (experimental)
- **Real-time WebSocket Communication**: Instant data transfer between browser and AI tools on port 7007
- **MCP Protocol Compatible**: Native integration with Claude Code, Cursor, Windsurf, and other MCP-enabled assistants

## Quick Start Guide
1. **Install Chrome Extension**: Visit [Chrome Web Store](https://chromewebstore.google.com) and search "MCP Pointer" or download from [GitHub Releases](https://github.com/etsd-tech/mcp-pointer/releases)
2. **Configure your AI tool** (one command):
   ```bash
   npx -y @mcp-pointer/server config claude   # or cursor, windsurf, manual
   ```
3. **Restart your AI coding tool** to load the MCP connection
4. **Navigate to any webpage** and Option+Click any element to select it
5. **Ask your AI** to analyze the targeted element—it now has full context!

## Use Cases
- Debugging CSS layout issues by pointing at problematic elements and asking AI for fixes
- Understanding unfamiliar codebases by selecting components and getting AI analysis
- Rapid prototyping with AI assistance based on existing UI elements
- React component identification and source file location during development
- Accessibility auditing by selecting elements and asking AI about improvements

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: Chrome (full support), Chromium-based browsers (Edge, Brave, Arc—manual extension loading)
- **Integration Options**: MCP protocol for Claude Code, Cursor, Windsurf; WebSocket on port 7007
- **Data Export**: Real-time JSON data via MCP tools; no persistent storage

### MCP Tool Available
- `get-pointed-element` – Returns info about selected DOM element
  - `textDetail`: `0 | 1 | 2` (none / visible only / visible + hidden)
  - `cssLevel`: `0 | 1 | 2 | 3` (none → full computed styles)

### Data Captured
- Tag name, ID, classes, text content
- CSS properties (display, position, colors, dimensions)
- All HTML attributes
- Exact coordinates and dimensions
- React component names and source files (experimental)

## Resources
- [GitHub Repository](https://github.com/etsd-tech/mcp-pointer)
- [Chrome Web Store](https://chromewebstore.google.com) (search "MCP Pointer")
- [GitHub Releases](https://github.com/etsd-tech/mcp-pointer/releases)
- [Contributing Guide](https://github.com/etsd-tech/mcp-pointer/blob/main/CONTRIBUTING.md)
- [npm Package](https://www.npmjs.com/package/@mcp-pointer/server)

## Notes & Considerations
- Some pages block content scripts (chrome://, extension pages, etc.)—the extension won't work there
- Port 7007 must not be blocked by firewall for WebSocket communication
- React 19 removed `_debugSource`, affecting source mapping in dev builds
- Vue.js component detection is planned but not yet implemented
- For Chromium-based browsers other than Chrome, manually load the unpacked extension
- Restart your AI assistant after initial MCP configuration
