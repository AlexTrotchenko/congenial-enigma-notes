---
title: Tool Note - Lottie-web
vendor: Airbnb
date: 202601011146
categories: [animation, webDevelopment, afterEffects, javascript, motionGraphics, ui]
pricing: free
platforms: [web, android, ios, reactNative, windows]
source: https://github.com/airbnb/lottie-web
documentation: https://airbnb.io/lottie/
type: tool
---

# Lottie-web - Render After Effects Animations Natively on Web

## Overview
Lottie is a cross-platform animation library developed by Airbnb that parses Adobe After Effects animations exported as JSON via Bodymovin and renders them natively on web, Android, iOS, and React Native. It enables designers to create and ship beautiful vector animations without engineers having to manually recreate them, bridging the gap between design and development workflows.

## Core Features
- Parses After Effects animations exported as JSON with the Bodymovin plugin
- Multiple renderer options including SVG, Canvas, and HTML for flexible implementation
- Comprehensive animation control API with play, pause, stop, setSpeed, and direction controls
- Rich event system for animation lifecycle (complete, loopComplete, enterFrame, DOMLoaded)
- Support for precomps, shapes, solids, images, masks, text layers, and expressions
- TypeScript definitions included for type-safe development

## Quick Start Guide
1. Install via npm: `npm install lottie-web` or include from CDN
2. Include the script in your HTML: `<script src="lottie.js"></script>`
3. Export your After Effects animation using the Bodymovin plugin as JSON
4. Load animation with JavaScript:
   ```javascript
   lottie.loadAnimation({
     container: document.getElementById('animation'),
     renderer: 'svg',
     loop: true,
     autoplay: true,
     path: 'animation.json'
   });
   ```
5. Control playback using returned animation instance methods

## Use Cases
- Animated icons and micro-interactions for web interfaces
- Onboarding flows and tutorial animations in mobile apps
- Loading states and progress indicators with brand personality
- Animated illustrations for marketing and landing pages
- Interactive UI elements that respond to user input
- Replacing GIFs with performant, scalable vector animations

## Technical Details
- **Pricing Model**: Free and open source under MIT license
- **Platform Support**: Web (all modern browsers), with companion libraries for Android, iOS, React Native, and Windows
- **Integration Options**: npm, Bower, CDN, direct script include; works with React, Vue, Angular
- **Data Export**: Animations stored as portable JSON files with optional images folder

## Resources
- [Official Website](https://airbnb.io/lottie/)
- [GitHub Repository](https://github.com/airbnb/lottie-web)
- [Composition Settings Wiki](https://github.com/airbnb/lottie-web/wiki/Composition-Settings)
- [CodePen Examples](https://codepen.io/collection/nVYWZR/)
- [Video Tutorial](https://www.youtube.com/watch?v=5XMUJdjI0L8)
- [Bodymovin Plugin (aescripts)](https://aescripts.com/bodymovin/)
- [CDN Link](https://cdnjs.com/libraries/bodymovin)

## Notes & Considerations
Not all After Effects features are supported: image sequences, videos, and audio are not available, and negative layer stretching causes issues. For Safari mask problems, call `lottie.setLocationHref()` before generating animations (commonly needed when using HTML base tags). Deep clone animationData objects when loading the same animation multiple times with repeaters. Gzipping animation JSONs significantly reduces file size for production. Performance can be optimized by keeping AE projects minimal and avoiding excessive nodes or oversized masked shapes.
