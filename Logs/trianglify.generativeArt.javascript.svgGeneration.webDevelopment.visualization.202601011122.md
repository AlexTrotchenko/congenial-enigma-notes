---
title: Tool Note - Trianglify
vendor: Quinn Rohlf (qrohlf)
date: 202601011122
categories: [generativeArt, javascript, svgGeneration, webDevelopment, visualization, backgroundDesign]
pricing: free
platforms: [web, nodeJs]
source: https://github.com/qrohlf/trianglify
documentation: https://github.com/qrohlf/trianglify#readme
type: tool
---

# Trianglify - Algorithmically Generated Triangle Art

## Overview
Trianglify is a JavaScript library for generating beautiful, unique SVG background patterns composed of algorithmically generated triangles. It works in both browser and Node.js environments, making it ideal for developers who need procedurally generated low-poly artwork for websites, applications, or static image exports.

## Core Features
- Generate low-poly triangle mesh patterns as SVG or Canvas elements
- Customizable color gradients using colorbrewer palettes or custom color arrays
- Seed-based generation for reproducible, consistent patterns across sessions
- Configurable cell size and variance for fine or coarse triangle meshes
- High-DPI/retina display support with automatic scaling
- Support for custom point arrays to create non-rectangular patterns (e.g., circular)

## Quick Start Guide
1. Install via npm: `npm install --save trianglify`
2. Or include via CDN: `<script src='https://unpkg.com/trianglify@^4/dist/trianglify.bundle.js'></script>`
3. Generate a pattern: `const pattern = trianglify({ width: 800, height: 600 })`
4. Render to canvas: `document.body.appendChild(pattern.toCanvas())`
5. Or render to SVG: `document.body.appendChild(pattern.toSVG())`
6. Customize with options like `cellSize`, `xColors`, `variance`, and `seed`

## Use Cases
- Dynamic website background generation
- Unique header images for blog posts using post titles as seeds
- Placeholder images and loading screens
- Generative art projects and visualizations
- Profile avatars or cover images with consistent theming
- Print materials requiring abstract geometric patterns

## Technical Details
- **Pricing Model**: Free and open source (GPL-3.0). Commercial license available via email for closed-source projects. Output images are owned by the creator.
- **Platform Support**: Browser (via CDN or bundler), Node.js (requires node-canvas for PNG export)
- **Integration Options**: ES modules, CommonJS, UMD bundle, unpkg CDN
- **Data Export**: SVG elements, Canvas elements, PNG streams (Node.js)

## Resources
- [Official Website](http://qrohlf.com/trianglify/)
- [GitHub Repository](https://github.com/qrohlf/trianglify)
- [Interactive GUI](https://trianglify.io/)
- [NPM Package](https://www.npmjs.com/package/trianglify)
- [Examples Directory](https://github.com/qrohlf/trianglify/tree/master/examples)

## Notes & Considerations
The library is licensed under GPL-3.0, meaning any project that includes the Trianglify source code must also be open source under a compatible license. However, you own the copyright to generated images and can use them freely in any project. For closed-source commercial use, a commercial license must be purchased. Very small cell sizes may significantly increase rendering time. The optional `node-canvas` dependency is required for PNG export in Node.js environments.
