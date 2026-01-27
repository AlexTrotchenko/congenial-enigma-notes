---
title: Tool Note - Caps-Log
vendor: Nikola Dućak (NikolaDucak)
date: 202601011346
categories: [journaling, tui, markdown, cli, localFirst, productivity]
pricing: free
platforms: [linux, mac]
source: https://github.com/NikolaDucak/caps-log
documentation: https://github.com/NikolaDucak/caps-log#readme
type: tool
---

# Caps-Log - Terminal-Based Daily Journaling Tool

## Overview
Caps-Log (Captain's Log) is a lightweight TUI (Terminal User Interface) journaling application built in C++ that stores daily entries as Markdown files. It features a calendar view for visualizing writing habits and activity patterns, with support for tags, sections, and encrypted storage. Ideal for developers and terminal enthusiasts who prefer keyboard-driven workflows and local-first data ownership.

## Core Features
- Daily journal entries stored as plain Markdown files for portability and editor compatibility
- Tag and section organization system using Markdown syntax (headers for sections, bullet lists for tags)
- Interactive calendar view highlighting dates with entries, selected tags, or annual events
- AES encryption support for securing sensitive journal entries with password protection
- Git repository integration for remote backup and sync via SSH authentication
- Scratchpad mode for quick note-taking without creating formal log entries
- Opens entries in your preferred editor via `$EDITOR` environment variable
- Annual events tracking for birthdays, holidays, and recurring dates with countdown display

## Quick Start Guide
1. Install dependencies: `sudo apt-get install -y libboost-program-options-dev libgit2-dev` (Linux) or `brew install boost libgit2` (Mac)
2. Clone the repository: `git clone https://github.com/NikolaDucak/caps-log.git`
3. Build from source: `mkdir build && cd build && cmake .. && make`
4. Install to PATH: `sudo make install`
5. Launch the application by typing `caps-log` in your terminal
6. Press `Enter` on any calendar date to create/edit that day's entry in your `$EDITOR`
7. Use `Tab` to switch between calendar and tag/section menus

## Use Cases
- Daily journaling and personal reflection with habit tracking visualization
- Developer work logs with tagged entries for projects and activities
- Encrypted private diary keeping with secure local storage
- Tracking recurring activities and habits through calendar highlighting
- Managing annual events like birthdays and anniversaries with countdown reminders
- Syncing journal entries across machines using Git remote repositories

## Technical Details
- **Pricing Model**: Free and open source under MIT license
- **Platform Support**: Linux (x86), macOS (Intel); requires terminal emulator with decent size
- **Integration Options**: Git remote sync via SSH, `$EDITOR` for external editor integration
- **Data Export**: Native Markdown files, fully portable to any text editor or note system
- **Dependencies**: Boost program options, libgit2, C++17 compiler
- **Storage**: Local filesystem with optional Git-based remote backup

## Resources
- [Official Repository](https://github.com/NikolaDucak/caps-log)
- [Documentation (README)](https://github.com/NikolaDucak/caps-log#readme)
- [Releases & Downloads](https://github.com/NikolaDucak/caps-log/releases)
- [Issue Tracker](https://github.com/NikolaDucak/caps-log/issues)
- [Test Examples](https://github.com/NikolaDucak/caps-log/blob/master/test/log_entry_test.cpp)

## Notes & Considerations
Emoji rendering may be inconsistent depending on terminal emulator and font configuration. The tool performs best when the terminal is large enough to display the full calendar view. Pre-built binaries are currently limited to x86 Linux and Intel macOS; ARM/Apple Silicon users should build from source. Config file location defaults to `~/.caps-log/config.ini` and logs to `~/.caps-log/day/`. Only SSH authentication is supported for Git remotes (no HTTPS). The first line of log files is ignored for section detection by default (commonly used for date headers).
