---
title: Tool Note - clipscreen
vendor: Andreas Gohr / splitbrain
date: 202511131553
categories: [screenSharing, virtualMonitor, linux, productivity, openSource, x11]
pricing: free
platforms: [linux]
source: https://github.com/splitbrain/clipscreen
documentation: https://github.com/splitbrain/clipscreen
type: tool
---

# clipscreen - Selective Screen Sharing via Virtual Monitor

## Overview
clipscreen is a lightweight Linux application that creates a virtual monitor mirroring a specific portion of your screen, highlighted with a green border overlay. This allows you to share just the content you want through any screen sharing tool (Google Meet, Teams, Jitsi, etc.) without switching between windows or exposing your entire desktop.

## Core Features
- Virtual monitor creation that mirrors a selected screen region
- Visual green rectangle overlay to indicate shared area
- Compatible with all major screen sharing platforms (Google Meet, Microsoft Teams, Jitsi Meet)
- Interactive area selection support with hacksaw or slop integration
- Command-line interface with precise coordinate control
- Zero dependency on specific screen sharing software

## Quick Start Guide
1. Install dependencies: `apt-get install libx11-dev xserver-xorg-dev xorg-dev libcairo2-dev gcc` (Ubuntu/Debian)
2. Clone repository: `git clone https://github.com/splitbrain/clipscreen.git`
3. Navigate to directory: `cd clipscreen`
4. Compile: `make`
5. Run with specific coordinates: `./clipscreen 800x600+100+100`
6. Or use interactive selection: `./clipscreen $(hacksaw)` or `./clipscreen $(slop)`
7. Share the virtual monitor named "clipscreen" in your screen sharing tool
8. Move any window into the green border to share it
9. Press Ctrl+C to terminate

## Use Cases
- Presenting slides while keeping notes visible on another screen
- Sharing specific application windows without desktop clutter
- Tutorial recording with focused content area
- Remote pair programming with controlled screen visibility
- Privacy-conscious screen sharing in video calls
- Multi-monitor workflow with selective sharing

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: Linux with X11/Xorg only (not tested on Wayland or other systems)
- **Integration Options**: Works with hacksaw or slop for interactive area selection
- **Data Export**: N/A (real-time screen mirroring)
- **Requirements**: X11 development libraries, Cairo graphics, C compiler

## Resources
- [GitHub Repository](https://github.com/splitbrain/clipscreen)
- [Source Code](https://github.com/splitbrain/clipscreen)
- [Creator Contact](mailto:andi@splitbrain.org)

## Notes & Considerations
Only compatible with Linux systems running X11/Xorg - not tested on Wayland, macOS, or Windows. Requires compilation from source. The virtual monitor must be manually selected in your screen sharing tool's monitor selection dialog. The green overlay is always visible on your physical screen but not intrusive. Application runs in terminal and requires Ctrl+C to terminate.
