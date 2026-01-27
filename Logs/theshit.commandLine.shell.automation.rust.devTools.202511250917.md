---
title: Tool Note - theshit
vendor: AsfhtgkDavid
date: 202511250917
categories: [commandLine, shell, automation, rust, devTools, productivity]
pricing: free
platforms: [linux, mac, windows]
source: https://github.com/AsfhtgkDavid/theshit
documentation: https://github.com/AsfhtgkDavid/theshit#readme
type: tool
---

# theshit - Automatic Shell Command Error Correction

## Overview
theshit is a fast, Rust-based command-line utility that automatically detects and fixes common mistakes in shell commands. Inspired by thefuck, it provides intelligent suggestions when commands fail, with a focus on speed and usability. Simply type `shit` after a failed command to get instant correction suggestions with interactive selection.

## Core Features
- **Intelligent Error Detection**: Automatically recognizes common shell command errors and suggests fixes
- **Interactive Selection**: Navigate suggestions with arrow keys, execute with Enter, or cancel with Ctrl+C
- **Built-in Rules**: Includes fixes for sudo permissions, cd typos, mkdir parent directories, and cargo commands
- **Custom Python Rules**: Extend functionality with custom Python-based correction rules
- **Multi-Shell Support**: Works seamlessly with Bash, Zsh, and Fish shells
- **Alias Expansion**: Automatically expands shell aliases before processing commands
- **Fast Performance**: Written in Rust for minimal latency between failed command and suggestion

## Quick Start Guide
1. Install via Cargo: `cargo install theshit`
2. Run initial setup: `theshit setup` (adds alias to shell configuration)
3. Restart your shell or source configuration file
4. When a command fails, type `shit` to see suggestions
5. Use Enter to execute, ↑/↓ to navigate options, Ctrl+C to cancel
6. Optional: Bind double ESC key for instant access (see documentation)

## Use Cases
- Fixing permission denied errors by adding sudo automatically
- Correcting typos in cd commands (e.g., `cs` → `cd`)
- Adding missing -p flag to mkdir for nested directories
- Fixing cargo subcommand typos (e.g., `biuld` → `build`)
- Creating custom rules for project-specific command patterns
- Speeding up command-line workflow by reducing retyping

## Technical Details
- **Pricing Model**: Free and open-source (MIT License)
- **Platform Support**: Linux, macOS, Windows (via WSL recommended)
- **Integration Options**: Shell aliases, keyboard shortcuts, custom Python rules via plugin system
- **Data Export**: Configuration stored in `~/.config/theshit/` with portable rule files
- **Requirements**: Rust toolchain for building from source, Python for custom rules
- **Language**: Written in Rust for performance

## Resources
- [Official Repository](https://github.com/AsfhtgkDavid/theshit)
- [Documentation](https://github.com/AsfhtgkDavid/theshit#readme)
- [Getting Started Guide](https://github.com/AsfhtgkDavid/theshit#usage)
- [Contributing Guidelines](https://github.com/AsfhtgkDavid/theshit/blob/main/CONTRIBUTING.md)
- [Issue Tracker](https://github.com/AsfhtgkDavid/theshit/issues)
- [Architecture Overview](https://code2tutorial.com/tutorial/711fc304-35d9-4c8a-a743-c3ddf1c3d09e/index.md)

## Notes & Considerations
Custom rules require both `match()` and `fix()` functions in Python files placed in `~/.config/theshit/fix_rules/active/`. Rules can be temporarily disabled by adding `.bak` extension or permanently disabled by moving to the `additional` directory. The sudo rule recognizes multiple error patterns including "permission denied", "eacces", and "operation not permitted". For optimal experience, configure double ESC keybinding in your shell. Rule files are native (built-in) or Python-based (custom), allowing extensive customization without recompiling.
