---
title: Tool Note - POML (Prompt Orchestration Markup Language)
vendor: Microsoft
date: 202601011412
categories: [promptEngineering, llm, markupLanguage, developerTools, aiDevelopment, vscodeExtension]
pricing: free
platforms: [windows, mac, linux, web]
source: https://github.com/microsoft/poml
documentation: https://microsoft.github.io/poml/
type: tool
---

# POML - Structured Markup Language for Advanced Prompt Engineering

## Overview
POML (Prompt Orchestration Markup Language) is a novel markup language from Microsoft designed to bring structure, maintainability, and versatility to prompt engineering for Large Language Models. It addresses challenges like lack of structure, complex data integration, and format sensitivity by providing HTML-like semantic components, CSS-like styling separation, and built-in templating for dynamic prompt generation.

## Core Features
- **Structured Prompting Markup**: HTML-like syntax with semantic components (`<role>`, `<task>`, `<example>`, `<output-format>`) for modular, readable, and reusable prompts
- **Comprehensive Data Handling**: Specialized data components (`<document>`, `<table>`, `<img>`) to embed or reference external files like text, spreadsheets, and images with customizable formatting
- **Decoupled Presentation Styling**: CSS-like styling system via `<stylesheet>` definitions or inline attributes to modify verbosity and format without altering prompt logic
- **Integrated Templating Engine**: Built-in support for variables (`{{ }}`), loops (`for`), conditionals (`if`), and variable definitions (`<let>`) for dynamic prompt generation
- **VS Code Extension**: Full IDE support with syntax highlighting, auto-completion, hover docs, real-time previews, inline diagnostics, and integrated LLM testing
- **Multi-language SDKs**: Available for Node.js (JavaScript/TypeScript) and Python for seamless integration into LLM application workflows

## Quick Start Guide
1. Install VS Code extension from marketplace or download `.vsix` from GitHub releases
2. For Node.js: `npm install pomljs` | For Python: `pip install poml`
3. Create a `.poml` file with basic structure: `<poml><role>...</role><task>...</task></poml>`
4. Configure LLM API settings in VS Code extension (model provider, API key, endpoint)
5. Use real-time preview to see rendered prompt output
6. Test prompts directly with configured LLM using integrated testing feature

## Use Cases
- Building modular, maintainable prompt libraries for LLM applications
- Creating data-driven prompts with embedded tables, documents, and images
- Separating prompt content from presentation to test format sensitivity
- Developing complex multi-turn conversation templates with variables and conditionals
- Standardizing prompt engineering practices across development teams
- Rapid prototyping and testing prompts with integrated LLM tooling

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: VS Code Extension (Windows, Mac, Linux), Node.js SDK, Python SDK
- **Integration Options**: Node.js/TypeScript via `pomljs`, Python via `poml`, Langchain compatible
- **Data Export**: Renders to plain text prompts consumable by any LLM API

## Resources
- [Official Website](https://microsoft.github.io/poml/)
- [Documentation](https://microsoft.github.io/poml/)
- [GitHub Repository](https://github.com/microsoft/poml)
- [VS Code Extension](https://marketplace.visualstudio.com/items?itemName=poml-team.poml)
- [PyPI Package](https://pypi.org/project/poml/)
- [npm Package](https://www.npmjs.com/package/pomljs)
- [Demo Video](https://youtu.be/b9WDcFsKixo)
- [Discord Community](https://discord.gg/FhMCqWzAn6)
- [Research Paper](https://arxiv.org/abs/2508.13948)

## Notes & Considerations
Requires LLM API configuration (OpenAI, Azure, Google) before testing prompts in VS Code extension. Community ecosystem includes implementations in Rust (mini-poml-rs), Ruby (poml-ruby), and Julia (PomlSDK.jl). Image support requires vision-capable LLM models. Project certified compliant with Microsoft Responsible AI Standard. Active development with 4.8k+ GitHub stars and community contributions welcome.
