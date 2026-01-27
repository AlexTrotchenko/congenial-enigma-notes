---
title: Tool Note - Treekanga
vendor: Garrett Krohn
date: 202512022136
categories: [cli, git, worktrees, devTools, productivity, terminal]
pricing: free
platforms: [mac, linux]
source: https://github.com/garrettkrohn/treekanga
documentation: https://github.com/garrettkrohn/treekanga#readme
type: tool
---

# Treekanga - Git Worktree Management Made Simple

## Overview
Treekanga is a powerful CLI tool designed to simplify Git worktree management. It streamlines the creation, navigation, and cleanup of worktrees with smart branch handling, zoxide integration for quick directory jumping, and YAML-based configuration. Perfect for developers who work across multiple branches simultaneously and want to reduce context-switching friction.

## Core Features
- **Smart Branch Handling**: Automatically detects local/remote branches and creates worktrees with intelligent branch logic
- **Zoxide Integration**: Register worktree folders with zoxide for instant navigation across your codebase
- **Interactive Deletion**: Clean up worktrees with stale branch filtering and interactive selection
- **Bare Repo Cloning**: Clone repositories directly as bare worktrees for optimal worktree workflows
- **Editor Integration**: Launch VS Code, Cursor, or connect to sesh sessions directly after worktree creation
- **Post-Script Automation**: Run custom scripts automatically after worktree operations
- **YAML Configuration**: Simple per-repository configuration for default branches, target directories, and zoxide folders

## Quick Start Guide
1. Install via Homebrew: `brew install garrettkrohn/treekanga/treekanga`
2. Create config file at `~/.config/treekanga/treekanga.yml`
3. Configure your repositories with default branches and worktree target directories
4. Create your first worktree: `treekanga add feature-branch`
5. List worktrees: `treekanga list`
6. Delete stale worktrees: `treekanga delete --stale`

## Use Cases
- Managing multiple feature branches simultaneously without stashing
- Code review workflows where you need to quickly switch between PRs
- Comparing implementations across different branches side-by-side
- Maintaining long-running development branches alongside hotfix work
- Teams using trunk-based development with short-lived feature branches

## Technical Details
- **Pricing Model**: Free and open source (GitHub)
- **Platform Support**: macOS and Linux via Homebrew
- **Integration Options**: VS Code, Cursor editor, sesh terminal sessions, zoxide navigation
- **Data Export**: Standard Git worktrees; no proprietary formats

## Resources
- [Official Repository](https://github.com/garrettkrohn/treekanga)
- [Documentation](https://github.com/garrettkrohn/treekanga#readme)
- [Installation Guide](https://github.com/garrettkrohn/treekanga#installation)
- [Configuration Reference](https://github.com/garrettkrohn/treekanga#configuration)

## Notes & Considerations
Requires zoxide to be installed separately for navigation features. Configuration is per-repository, so each project needs its own entry in the YAML config. The `--delete` flag with `treekanga delete` will remove local branches—use with caution. Best suited for developers already familiar with Git worktrees who want to optimize their workflow. Assumes a bare repository structure for optimal worktree management.
