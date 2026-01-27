---
title: Tool Note - Anime.js
vendor: Julian Garnier
date: 202601011352
categories: [animation, javascript, webDev, frontEnd, svg, openSource]
pricing: free
platforms: [web]
source: https://animejs.com
documentation: https://animejs.com/documentation
type: tool
---

# Anime.js - Lightweight JavaScript Animation Engine

## Overview
Anime.js is a fast, multipurpose, and lightweight JavaScript animation library with a simple yet powerful API. It works seamlessly with CSS properties, SVG, DOM attributes, and JavaScript objects, making it ideal for creating complex web animations with minimal code. The library is highly popular with 65k+ GitHub stars and is used by over 61k projects.

## Core Features
- **Multi-target animation** supporting CSS selectors, DOM elements, JS objects, and arrays
- **CSS transforms & properties** with automatic unit conversion and relative values
- **SVG animation** including morphing, drawable paths, and motion paths
- **Timeline sequencing** for complex, choreographed animation sequences
- **Draggable module** with physics-based release animations and snapping
- **Scroll-linked animations** via ScrollObserver with smooth/eased scrolling
- **Text splitting** for character, word, and line-based text animations
- **Web Animation API (WAAPI) support** for hardware-accelerated performance
- **Stagger utility** for creating sequential delays across multiple targets
- **Extensive easing library** including spring physics, cubic bezier, and steps

## Quick Start Guide
1. Install via npm: `npm install animejs` or use CDN
2. Import modules: `import { animate, stagger } from 'animejs'`
3. Create basic animation:
   ```javascript
   animate('.element', {
     translateX: 250,
     rotate: '1turn',
     duration: 800,
     ease: 'inOutQuint'
   });
   ```
4. Add staggered delays for multiple elements:
   ```javascript
   animate('.items', {
     scale: [0, 1],
     delay: stagger(100)
   });
   ```
5. Create timeline for sequenced animations:
   ```javascript
   import { createTimeline } from 'animejs';
   const tl = createTimeline();
   tl.add('.first', { opacity: 1 })
     .add('.second', { translateY: 100 }, '-=200');
   ```

## Use Cases
- Landing page hero animations and micro-interactions
- SVG logo animations and icon morphing effects
- Scroll-triggered reveal animations and parallax effects
- Interactive UI elements with drag-and-drop functionality
- Data visualization transitions and chart animations
- Text reveal effects for headings and typography
- Loading states and progress indicators
- Game UI and interactive storytelling

## Technical Details
- **Pricing Model**: Free and open source under MIT license
- **Platform Support**: All modern browsers; works with vanilla JS, React, Vue, and other frameworks
- **Integration Options**: ES modules, UMD, CommonJS, IIFE builds available; TypeScript declarations included
- **Data Export**: N/A (client-side animation library)
- **Bundle Size**: ~17KB minified + gzipped (core)
- **Current Version**: v4.2.2

## Resources
- [Official Website](https://animejs.com)
- [Documentation](https://animejs.com/documentation)
- [Getting Started Guide](https://animejs.com/documentation/getting-started)
- [CodePen Examples](https://codepen.io/collection/Poerqa)
- [GitHub Repository](https://github.com/juliangarnier/anime)
- [Easing Editor Tool](https://animejs.com/easing-editor)
- [V3 to V4 Migration Guide](https://github.com/juliangarnier/anime/wiki/Migrating-from-v3-to-v4)

## Notes & Considerations
V4 is a significant rewrite from V3 with breaking changes; check the migration guide when upgrading existing projects. The library uses requestAnimationFrame for optimal performance. For maximum performance on transform animations, consider using WAAPI mode which enables hardware acceleration. The Draggable and ScrollObserver features are new in V4. Sponsor the project on GitHub to support continued development.
