---
title: Tool Note - Resterm
vendor: unkn0wn-root
date: 202412261423
categories: [apiTesting, cli, devTools, rest, graphql, grpc]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/unkn0wn-root/resterm
documentation: https://github.com/unkn0wn-root/resterm/blob/main/docs/resterm.md
type: tool
---

# Resterm - Terminal-Based API Client for Power Users

## Overview
Resterm is a keyboard-driven terminal client for working with HTTP, GraphQL, gRPC, WebSocket, and SSE protocols. It emphasizes local-first operation with no cloud sync or accounts required, storing everything in plain `.http/.rest` files. Built for developers who live in the terminal, it offers advanced features like SSH tunnels, OAuth 2.0 flows, multi-step workflows, response diffs, and request profiling.

## Core Features
- Multi-protocol support for HTTP, GraphQL, gRPC, WebSocket, and SSE in a unified TUI
- Built-in SSH tunnels for routing traffic through bastions with host key verification and keep-alives
- OAuth 2.0 integration with client credentials, password grant, and authorization code + PKCE with automatic browser flow
- RestermScript (RTS) custom scripting language for templates, directives, and reusable modules
- Multi-step workflows with `@workflow`/`@step` directives for chaining requests and passing data
- Response comparison across environments with side-by-side diff views
- OpenAPI importer to convert specs into `.http` collections from CLI
- Tracing and timeline visualization with optional OpenTelemetry export
- Latency profiling with `@profile` directive for benchmarking endpoints with histogram rendering
- Custom theming and keybindings for personalized workflows

## Quick Start Guide
1. Install via Homebrew (`brew install resterm`) or shell script: `curl -fsSL https://raw.githubusercontent.com/unkn0wn-root/resterm/main/install.sh | bash`
2. Launch Resterm in your project directory: `resterm` or `resterm --workspace path/to/project`
3. Focus the editor pane with `Tab`, press `i` to enter insert mode
4. Type a simple request: `GET https://httpbin.org/status/204`
5. Press `Ctrl+Enter` to send the request and view the response in the right pane
6. Use `Tab`/`Shift+Tab` to navigate between sidebar, editor, and response panes

## Use Cases
- API development and debugging without leaving the terminal
- Testing authenticated endpoints with built-in OAuth 2.0 token management
- Comparing API responses across staging/production environments
- Profiling endpoint latency and identifying performance bottlenecks
- Accessing internal APIs through SSH tunnels/bastion hosts
- Importing and testing OpenAPI specifications
- Building automated multi-step API test workflows
- Real-time WebSocket and SSE debugging with interactive console

## Technical Details
- **Pricing Model**: Free and open source under Apache-2.0 license
- **Platform Support**: Linux (glibc 2.32+), macOS, Windows; requires terminal emulator
- **Integration Options**: OpenAPI import, curl command import, environment files (JSON/dotenv), OpenTelemetry export
- **Data Export**: Plain `.http/.rest` text files, fully portable and version-controllable

## Resources
- [Official Repository](https://github.com/unkn0wn-root/resterm)
- [Full Documentation](https://github.com/unkn0wn-root/resterm/blob/main/docs/resterm.md)
- [RestermScript Reference](https://github.com/unkn0wn-root/resterm/blob/main/docs/restermscript.md)
- [Example Files](https://github.com/unkn0wn-root/resterm/tree/main/_examples)
- [Changelog](https://github.com/unkn0wn-root/resterm/blob/main/CHANGELOG.md)

## Notes & Considerations
Pre-built Linux binaries require glibc 2.32 or newer; older distros may need source builds. Homebrew installations should be updated via `brew upgrade resterm` rather than the built-in `--update` command. All data is stored locally in plain text files with no cloud dependencies, making it ideal for air-gapped or security-conscious environments. The TUI is keyboard-driven by design with vim-style navigation conventions.
