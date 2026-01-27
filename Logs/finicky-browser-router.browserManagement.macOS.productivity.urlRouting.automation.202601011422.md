---
title: Tool Note - Finicky
vendor: johnste (John Sterling)
date: 202601011422
categories: [browserManagement, macOS, productivity, urlRouting, automation, openSource]
pricing: free
platforms: [mac]
source: https://github.com/johnste/finicky
documentation: https://github.com/johnste/finicky/wiki/Configuration-(v4)
type: tool
---

# Finicky - Smart Browser Routing for macOS

## Overview
Finicky is a macOS application that acts as a default browser router, allowing you to define rules that determine which browser opens for every URL. Using JavaScript or TypeScript configuration files, you can create powerful matching rules to separate work and personal browsing, rewrite URLs to remove tracking parameters, and route specific domains to designated browsers or applications.

## Core Features
- **URL-based browser routing** - Route any URL to your preferred browser using domain matching, wildcards, and regex patterns
- **URL rewriting** - Automatically modify URLs before opening (force HTTPS, remove tracking parameters, redirect to alternative frontends)
- **JavaScript/TypeScript configuration** - Write rules in familiar languages with full programmatic control
- **Multi-browser support** - Handle multiple browsers and URL-capable apps with a single configuration file
- **Browser extensions** - Chrome and Firefox extensions for manual "open with Finicky" on any link
- **Source app awareness** - Create rules based on which application triggered the URL open

## Quick Start Guide
1. Install via Homebrew: `brew install --cask finicky` or download from GitHub releases
2. Create configuration file at `~/.finicky.js` in your home directory
3. Launch Finicky from Applications and set it as your default browser when prompted
4. Add your first handler rule to route a domain to a specific browser
5. Test by clicking links in other apps - they'll route according to your rules
6. Refine rules using the built-in configuration/troubleshooting window

## Use Cases
- Separating work (Chrome) and personal (Firefox) browsing by domain
- Opening video conferencing links (Zoom, Google Meet) directly in their native apps
- Redirecting Twitter/X links to privacy-friendly alternatives like xcancel.com
- Removing UTM tracking parameters from all URLs automatically
- Opening development localhost URLs in a specific browser with dev tools
- Routing internal company URLs to a work-specific browser profile

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: macOS only (native app)
- **Integration Options**: Browser extensions for Chrome/Firefox, works with any URL-capable app
- **Data Export**: Configuration is a plain JavaScript/TypeScript file, fully portable and version-controllable

## Resources
- [Official Repository](https://github.com/johnste/finicky)
- [Configuration Documentation](https://github.com/johnste/finicky/wiki/Configuration-(v4))
- [Download Releases](https://github.com/johnste/finicky/releases)
- [Configuration Ideas](https://github.com/johnste/finicky/wiki/Configuration-ideas)
- [Community Discussions](https://github.com/johnste/finicky/discussions)
- [Firefox Extension](https://addons.mozilla.org/en-US/firefox/addon/finicky/)
- [Chrome Extension](https://chromewebstore.google.com/detail/finicky/kcnjhpdfmjcbohngnmobipdllkhnpdbk)
- [Migration Guide (v3 to v4)](https://github.com/johnste/finicky/wiki/Migrating-from-Finicky-3)

## Notes & Considerations
Finicky must be set as the default browser to intercept URL opens from other applications. The configuration file uses ES modules syntax with `export default`. For a graphical browser picker instead of automatic routing, consider pairing with Browserosaurus. Current version is v4.2.2 which uses a different configuration format than v3 - check the migration guide if upgrading. The app runs as a menu bar utility and includes a troubleshooting window accessible by launching the app directly.
