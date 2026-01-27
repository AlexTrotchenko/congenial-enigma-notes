---
title: Tool Note - Context7
vendor: Upstash
date: 202411042237
categories: [aiCoding, mcp, documentation, llm, devTools, openSource]
pricing: freemium
platforms: [web, windows, mac, linux]
source: https://github.com/upstash/context7
documentation: https://context7.com
type: tool
---

# Context7 - Up-to-Date Code Documentation for LLMs

## Overview
Context7 is a Model Context Protocol (MCP) server that provides LLMs and AI code editors with up-to-date, version-specific documentation and code examples directly from the source. It eliminates hallucinated APIs, outdated examples, and generic answers by fetching current documentation and injecting it into the LLM's context. Context7 integrates seamlessly with popular AI coding tools like Cursor, Claude Code, VS Code, Windsurf, and many others.

## Core Features
- **Version-specific documentation** - Fetches up-to-date docs and code examples for specific library versions, eliminating outdated training data issues
- **MCP protocol integration** - Works with 25+ AI coding tools through the Model Context Protocol standard
- **Automatic library resolution** - Resolves general library names into Context7-compatible IDs for accurate documentation retrieval
- **Topic-focused filtering** - Can narrow documentation to specific topics like "routing" or "hooks" for targeted results
- **Community-driven catalog** - Supports hundreds of libraries through community contributions and additions
- **Multiple transport options** - Supports HTTP, stdio, and SSE transport protocols for flexible deployment
- **Proxy support** - Works behind corporate HTTP proxies using standard environment variables

## Quick Start Guide
1. **Install Node.js v18+** - Ensure Node.js version 18.0.0 or higher is installed on your system
2. **Get API key (optional)** - Create account at context7.com/dashboard for higher rate limits and private repositories
3. **Install in your AI coding tool** - Add Context7 to your MCP client configuration (see platform-specific instructions)
4. **For Cursor**: Add to `~/.cursor/mcp.json`:
   ```json
   {
     "mcpServers": {
       "context7": {
         "command": "npx",
         "args": ["-y", "@upstash/context7-mcp", "--api-key", "YOUR_API_KEY"]
       }
     }
   }
   ```
5. **Use in prompts** - Add `use context7` to your prompts or set up auto-invocation rules
6. **Specify libraries** - Use slash syntax like `/supabase/supabase` to directly reference specific library docs

## Use Cases
- Getting accurate, current code examples for libraries you're using
- Setting up authentication flows with up-to-date API documentation
- Learning new frameworks with version-specific tutorials and examples
- Debugging with current library references instead of outdated information
- Building middleware and configuration with correct syntax
- Eliminating hallucinated APIs and deprecated code patterns
- Accessing documentation for private repositories (with API key)

## Technical Details
- **Pricing Model**: Free tier with rate limits, paid API keys for higher limits and private repo access
- **Platform Support**: Cross-platform (Windows, macOS, Linux) via Node.js runtime, also supports Bun and Deno
- **Integration Options**: Works with Cursor, Claude Code, VS Code, Windsurf, Cline, Zed, Claude Desktop, Roo Code, Augment Code, Gemini CLI, Qwen Coder, JetBrains AI Assistant, and 15+ other MCP clients
- **Data Export**: Documentation is fetched on-demand and injected into LLM context, no persistent storage
- **Transport Methods**: HTTP (default port 3000), stdio, or SSE (deprecated)
- **API Requirements**: Node.js >= v18.0.0 for native fetch support

## Resources
- [GitHub Repository](https://github.com/upstash/context7)
- [Official Website](https://context7.com)
- [API Dashboard](https://context7.com/dashboard)
- [Project Addition Guide](https://github.com/upstash/context7/blob/master/docs/adding-projects.md)
- [Discord Community](https://upstash.com/discord)
- [Twitter/X Updates](https://x.com/context7ai)
- [MCP Inspector Testing](https://modelcontextprotocol.io/quickstart/user)

## Notes & Considerations
The Context7 repository only contains the MCP server source code; the API backend, parsing engine, and crawling engine are private and not open-sourced. All library documentation is community-contributed and maintained by respective project owners, not Context7. If using behind a proxy, set the `https_proxy` or `HTTPS_PROXY` environment variable. SSE transport protocol is deprecated and will be removed in future releases—use HTTP or stdio instead. For module resolution issues, try using `bunx` instead of `npx`. Some MCP clients may require specific Node.js flags like `--experimental-vm-modules` or `--experimental-fetch` for proper operation.
