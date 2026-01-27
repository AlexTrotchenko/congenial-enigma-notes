---
title: Tool Note - Custom Elements Manifest
vendor: Open Web Components Community (open-wc.org)
date: 202601161005
categories: [webComponents, developerTools, documentation, javascript, automation, tooling]
pricing: free
platforms: [web, windows, mac, linux]
source: https://github.com/webcomponents/custom-elements-manifest
documentation: https://custom-elements-manifest.open-wc.org
type: tool
---

# Custom Elements Manifest - Single Source of Truth for Web Components

## Overview
Custom Elements Manifest (CEM) is a standardized JSON specification for documenting web components metadata, including properties, events, slots, attributes, and CSS parts. It serves as a "detailed table of contents" for component libraries, enabling automation across Storybook, IDE tooling, linting, and AI assistants. By generating a single manifest file from your source code, it eliminates duplicated documentation and keeps all tooling synchronized.

## Core Features
- **Automated JSON generation** from component source code via the CEM Analyzer, supporting Lit, Stencil, FAST, and custom frameworks
- **Storybook integration** via `@wc-toolkit/storybook-helpers` for auto-generated args, argTypes, events, and templates
- **VSCode Language Server** providing IntelliSense, hover documentation, and attribute autocomplete for web components
- **MCP Server** to ground AI assistants (GitHub Copilot) with component knowledge, reducing hallucinations
- **Web Components Linter** (`@wc-toolkit/wctools`) for validating component usage across the entire codebase
- **Framework-agnostic** specification that works across all web component libraries

## Quick Start Guide
1. Install the analyzer: `pnpm add -D @custom-elements-manifest/analyzer`
2. Add script to package.json: `"analyze": "cem analyze --litelement --globs \"src/**/*.ts\""`
3. Run `pnpm analyze` to generate `custom-elements.json`
4. Install Storybook helpers: `pnpm add -D @wc-toolkit/storybook-helpers`
5. Configure Storybook preview.ts with `setCustomElementsManifest(manifest)`
6. Install VSCode extension: "Web Components Language Server" by wc-toolkit
7. (Optional) Enable MCP server in VSCode settings: `"wctools.mcp.enabled": true`
8. (Optional) Add linting: `pnpm add -D @wc-toolkit/wctools` and script `"lint": "wctools validate"`

## Use Cases
- Eliminating duplicate component documentation across Storybook, tests, and Figma Code Connect
- Auto-generating Storybook stories with minimal boilerplate code
- Providing IDE IntelliSense for custom element attributes and slots
- Grounding AI coding assistants with accurate component APIs
- Validating correct component usage in large codebases
- Generating component API documentation automatically

## Technical Details
- **Pricing Model**: Completely free and open source (MIT/Apache-2.0 licenses)
- **Platform Support**: Node.js runtime; IDE support via VSCode extension
- **Integration Options**: Storybook, VSCode, GitHub Copilot (via MCP), ESLint-style validation
- **Data Export**: Standard JSON format (`custom-elements.json`) following the CEM schema specification

## Resources
- [Official Specification](https://github.com/webcomponents/custom-elements-manifest)
- [CEM Analyzer Documentation](https://custom-elements-manifest.open-wc.org/analyzer/getting-started/)
- [Storybook Helpers (@wc-toolkit)](https://wc-toolkit.com/integrations/storybook/)
- [VSCode Language Server Extension](https://marketplace.visualstudio.com/items?itemName=wc-toolkit.web-components-language-server)
- [Web Components Linter](https://wc-toolkit.com/integrations/wctools/)
- [Demo Repository](https://github.com/fgeierst/custom-elements-manifest-demo)
- [JSON Schema Reference](https://github.com/webcomponents/custom-elements-manifest/blob/main/schema.d.ts)

## Notes & Considerations
The CEM ecosystem involves multiple packages that work together: the core analyzer generates the manifest, while separate tools consume it for different purposes. Framework-specific plugins are available for Lit, Stencil, FAST, and others—ensure you use the correct flag (e.g., `--litelement`). The VSCode Language Server extension has a built-in MCP server but it must be explicitly enabled in settings. Note naming confusion: `@wc-toolkit/wctools` validates component *usage* against the manifest, while CEM Validator validates the manifest file *itself*. Keep the manifest file updated by running the analyzer in CI or as a pre-commit hook.
