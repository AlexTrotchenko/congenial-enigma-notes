---
title: Tool Note - cheatshh
vendor: AnirudhG07
date: 202601141324
categories: [cli, cheatsheet, productivity, terminal, shellScript]
pricing: free
platforms: [mac, linux, windows]
source: https://github.com/AnirudhG07/cheatshh
documentation: https://github.com/AnirudhG07/cheatshh/tree/main/docs
type: tool
---

# cheatshh - Interactive CLI Cheatsheet Manager

## Overview
Cheatshh is an interactive command-line tool for managing and organizing CLI command cheatsheets, powered by fuzzy finder (fzf) and whiptail. It allows users to store commands with descriptions, group them logically, bookmark frequently used commands, and view TLDR/MAN pages directly in the preview—eliminating the need to memorize complex CLI syntax.

## Core Features
- Fuzzy finder (fzf) powered interface for quick command search and execution
- Group commands into logical categories with custom organization
- Bookmark frequently used commands for quick access outside of groups
- Integrated TLDR and MAN page previews alongside custom descriptions
- Configurable colors, automatic man page display, and external cheatsheet sources (tldr, cheat.sh)
- Premade command libraries available for download with community contributions welcome

## Quick Start Guide
1. Install via pip: `pip install cheatshh`
2. Ensure dependencies are installed: `brew install fzf whiptail jq yq` (macOS) or `sudo apt install fzf whiptail jq yq` (Linux)
3. Run `cheatshh` to launch the interactive interface
4. Add a new group with `cheatshh -g`
5. Use Enter to select commands; navigate with fzf fuzzy search
6. Configure preferences in `~/.config/cheatshh/cheatshh.toml`

## Use Cases
- Building a personal reference for complex CLI tools (git, docker, kubectl, etc.)
- Onboarding developers with team-standard command collections
- Quick access to rarely-used but critical system administration commands
- Sharing curated command libraries across machines via dotfiles repositories
- Integrating with Yazi file manager via cheatshh.yazi plugin

## Technical Details
- **Pricing Model**: Free and open source (Apache-2.0 license)
- **Platform Support**: macOS (primary), Linux (fully supported), Windows (requires manual path configuration)
- **Dependencies**: fzf, whiptail, jq, yq (Homebrew version required, not PyPI)
- **Data Storage**: JSON files in `~/.config/cheatshh/` (commands.json, groups.json)
- **Integration Options**: Yazi plugin, stow-compatible for dotfiles sync

## Resources
- [GitHub Repository](https://github.com/AnirudhG07/cheatshh)
- [Documentation](https://github.com/AnirudhG07/cheatshh/tree/main/docs)
- [Premade Libraries](https://github.com/AnirudhG07/cheatshh/tree/main/library)
- [Yazi Plugin](https://github.com/AnirudhG070/plugins-yazi/tree/main/cheatshh.yazi)
- [PyPI Package](https://pypi.org/project/cheatshh/)
- [Buy Me a Coffee (Support)](https://buymeacoffee.com/anirudhg07)

## Notes & Considerations
Current version is 1.1.1 (released June 2024). The jq and yq dependencies must be the Homebrew versions—PyPI yq will not work. Windows users need to manually update absolute paths in `cheatshh.toml` and `cheats.sh`. Fish shell is not recommended. If PATH issues occur after pip install, add `$HOME/.local/bin` to your shell's PATH. Configuration and command data can be synced across machines using stow with a specific directory structure.
