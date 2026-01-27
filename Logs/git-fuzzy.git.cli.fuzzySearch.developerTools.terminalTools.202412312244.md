---
title: Tool Note - git-fuzzy
vendor: bigH
date: 202412312244
categories: [git, cli, fuzzySearch, developerTools, terminalTools, productivity]
pricing: free
platforms: [mac, linux]
source: https://github.com/bigH/git-fuzzy
documentation: https://github.com/bigH/git-fuzzy#readme
type: tool
---

# git-fuzzy - Interactive Git CLI Powered by fzf

## Overview
git-fuzzy is a command-line interface wrapper for git that leverages fzf (fuzzy finder) to provide an interactive, searchable experience for common git operations. It transforms complex git workflows into visual, keyboard-navigable interfaces where you can stage files, browse diffs, search logs, manage branches, and more—all with real-time fuzzy search and live previews. Designed for developers who prefer staying in the terminal but want a more intuitive git experience.

## Core Features
- **Interactive Status Manager**: Stage/unstage files with selection or cursor navigation, commit interactively with real-time diff preview
- **Searchable Diff Viewer**: Search through diff contents from the query bar with syntax highlighting in the preview pane
- **Log Browser with Dual Search**: Search log entries and their corresponding diffs simultaneously using pipe syntax for split queries
- **Branch Management**: Search for, checkout, and inspect branches with remote support
- **Stash & Reflog Navigation**: Browse and interact with stash entries and reflog with fuzzy filtering
- **GitHub PR Integration**: Interactively select, open, and diff GitHub pull requests directly from the terminal
- **Extensive Customization**: Supports delta, diff-so-fancy, bat, and eza for enhanced visuals; configurable keybindings and layouts

## Quick Start Guide
1. Install fzf (version 0.21.0 or higher): `brew install fzf`
2. Clone the repository: `git clone https://github.com/bigH/git-fuzzy.git`
3. Add to your PATH (Bash): `echo "export PATH=\"$(pwd)/git-fuzzy/bin:\$PATH\"" >> ~/.bashrc`
4. Source your shell config or restart terminal: `source ~/.bashrc`
5. Run `git fuzzy` in any git repository to access the interactive menu
6. Optional: Install `delta`, `bat`, and `eza` for enhanced diff and file previews

## Use Cases
- Quickly staging/unstaging specific files without memorizing git add syntax
- Searching through git history to find when a specific change was introduced
- Reviewing diffs interactively before committing
- Managing multiple feature branches with visual branch switching
- Recovering work from stash or reflog with preview before applying
- Reviewing GitHub pull requests without leaving the terminal

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: macOS and Linux (requires Bash, Zsh, or Fish shell with fzf installed)
- **Integration Options**: Works with delta, diff-so-fancy for diffs; bat for syntax highlighting; eza for file listings; GitHub CLI for PR features
- **Data Export**: N/A (operates on existing git repositories)

## Resources
- [Official Repository](https://github.com/bigH/git-fuzzy)
- [Documentation (README)](https://github.com/bigH/git-fuzzy#readme)
- [Installation Guide](https://github.com/bigH/git-fuzzy#installing)
- [Customization Options](https://github.com/bigH/git-fuzzy#customizing)
- [fzf (Required Dependency)](https://github.com/junegunn/fzf)

## Notes & Considerations
Requires fzf version 0.21.0 or higher as a hard dependency. The tool is shell-based (95% Shell, 5% Awk), so Windows support requires WSL or similar Unix-like environment. For repos that changed default HEAD from master to main, you may need to run `git remote set-head <remote> <branch>` to avoid issues. Snapshot/backup feature available by setting `GF_SNAPSHOT_DIRECTORY` environment variable for recovering from accidental operations. If using nano as your git editor, special stdin configuration is required. The UI may flash during command execution due to fzf's alternate screen behavior.
