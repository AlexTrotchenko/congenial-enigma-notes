---
title: Tool Note - oh-my-logo
vendor: shinshin86
date: 202511072157
categories: [terminal, cli, asciiArt, nodeJs, visualization, developer]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/shinshin86/oh-my-logo
documentation: https://github.com/shinshin86/oh-my-logo#readme
type: tool
---

# oh-my-logo - Stunning Terminal ASCII Art Logos with Gradients

## Overview
oh-my-logo is a zero-dependency CLI tool and Node.js library that creates beautiful ASCII art logos with colorful gradient effects in your terminal. Perfect for adding visual flair to project banners, CLI applications, or terminal startups, it offers two rendering modes (outlined or filled), 13 built-in color palettes, and extensive customization options. All generated logos are CC0 (public domain) and can be used anywhere without restrictions.

## Core Features
- **Dual Rendering Modes**: Choose between traditional outlined ASCII art or modern filled block characters with customizable shadow styles
- **13 Beautiful Palettes**: Pre-designed gradients including sunset, ocean, fire, matrix, nebula, and more with support for custom hex colors
- **Flexible Gradients**: Apply colors in vertical, horizontal, or diagonal directions, plus reverse any palette for unique effects
- **Zero Installation Required**: Run instantly with `npx oh-my-logo` without any setup or dependencies
- **Multi-line Support**: Create complex logos with multiple lines using `\n` separator
- **Customizable Typography**: Choose from various figlet fonts and control letter spacing (0-N spaces) in filled mode
- **Shadow Styling**: Select from 11 different block fonts (block, chrome, shade, simpleBlock, etc.) for unique shadow effects
- **Programmatic API**: Use as a Node.js library with TypeScript support for dynamic logo generation in your applications

## Quick Start Guide
1. **Instant Usage (No Installation)**: Run `npx oh-my-logo "HELLO WORLD"` to generate your first logo
2. **Try Different Styles**: Add `--filled` flag for block characters: `npx oh-my-logo "YOUR LOGO" sunset --filled`
3. **Explore Palettes**: View all available color schemes with `npx oh-my-logo "" --list-palettes`
4. **Install Globally** (Optional): Run `npm install -g oh-my-logo` for faster repeated use
5. **Use as Library**: Install in your project with `npm install oh-my-logo` and import render functions
6. **Customize**: Try different fonts, gradients, and shadow styles with flags like `--block-font`, `--direction`, and `--reverse-gradient`

## Use Cases
- **Project Banners**: Add eye-catching headers to README files and documentation
- **Terminal Startup**: Display company or personal branding when opening terminal sessions
- **CI/CD Pipelines**: Make deployment logs and build outputs more visually engaging
- **CLI Application Branding**: Create distinctive startup screens for command-line tools
- **Terminal Presentations**: Generate stunning visual demos for talks and screencasts
- **Development Tools**: Add personality to scripts, dev environments, and automation workflows
- **Personal Branding**: Customize shell prompts and terminal themes with unique logos

## Technical Details
- **Pricing Model**: 100% Free and Open Source (MIT License), logos are CC0 public domain
- **Platform Support**: Cross-platform via Node.js (Windows, macOS, Linux) - runs anywhere Node.js is installed
- **Integration Options**: 
  - CLI with stdin support for scripting
  - Node.js library with async render functions
  - TypeScript definitions included
  - Environment variable support (OHMYLOGO_FONT)
- **Data Export**: Direct stdout rendering or programmatic string returns for flexible integration
- **Dependencies**: Zero runtime dependencies - built with figlet, chalk-template, gradient-string, and ink internals

## Resources
- [Official Repository](https://github.com/shinshin86/oh-my-logo)
- [Documentation](https://github.com/shinshin86/oh-my-logo#readme)
- [Usage Examples](https://github.com/shinshin86/oh-my-logo#examples)
- [API Reference](https://github.com/shinshin86/oh-my-logo#library-api)
- [Color Palettes Guide](https://github.com/shinshin86/oh-my-logo#available-palettes)
- [Contributing Guide](https://github.com/shinshin86/oh-my-logo#contributing)

## Notes & Considerations
**Built-in Color Palettes**: 13 professionally designed gradients (grad-blue, sunset, dawn, nebula, ocean, fire, forest, gold, purple, mint, coral, matrix, mono) with ability to define custom hex color arrays.

**Rendering Modes**: Outlined mode uses traditional ASCII art characters, while filled mode creates solid block characters with various shadow styles for different visual effects.

**Letter Spacing**: Only applicable in filled mode - accepts integers 0 or greater (decimals are truncated). Default is 1 space between characters.

**Font Compatibility**: Depends on system's figlet font installation. Use `figlet -f` to list available fonts. The `OHMYLOGO_FONT` environment variable sets a default font.

**Terminal Compatibility**: Requires terminal with color support. Use `--color` flag to force colors in piped outputs or `--no-color` for plain text.

**Performance**: Lightweight and fast - suitable for runtime generation in scripts and applications. Includes comprehensive test suite with Vitest.

**Gallery Mode**: Use `--gallery` flag to preview your text in all available palettes simultaneously for quick comparison and selection.
