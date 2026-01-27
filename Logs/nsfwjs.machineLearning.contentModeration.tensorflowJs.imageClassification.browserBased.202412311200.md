---
title: Tool Note - NSFWJS
vendor: Infinite Red
date: 202412311200
categories: [machineLearning, contentModeration, tensorflowJs, imageClassification, browserBased, openSource]
pricing: free
platforms: [web, node, reactNative]
source: https://nsfwjs.com/
documentation: https://github.com/infinitered/nsfwjs
type: tool
---

# NSFWJS - Client-Side NSFW Image Detection via TensorFlow.js

## Overview
NSFWJS is a JavaScript library for detecting inappropriate (NSFW) content in images directly in the browser or Node.js environment using TensorFlow.js. It provides ~90-93% accuracy without requiring server-side processing, making it ideal for real-time content moderation. The library classifies images into five categories: Drawing, Hentai, Neutral, Porn, and Sexy.

## Core Features
- Client-side image classification with no server round-trips required
- Multiple pre-trained models: MobileNetV2 (224x224), MobileNetV2Mid, and InceptionV3 (299x299)
- Five-category classification system for nuanced content detection
- Browser caching support via IndexedDB for faster subsequent loads
- Cross-platform compatibility including browser, Node.js, and React Native
- Tree-shaking support for optimized bundle sizes with modern bundlers

## Quick Start Guide
1. Install dependencies via npm/yarn: `yarn add @tensorflow/tfjs nsfwjs`
2. Import the library: `import * as nsfwjs from 'nsfwjs'`
3. Load the model: `const model = await nsfwjs.load()`
4. Get image element: `const img = document.getElementById('img')`
5. Classify the image: `const predictions = await model.classify(img)`
6. Process results array containing className and probability values

## Use Cases
- User-generated content moderation on social platforms
- Image upload validation before server submission
- Browser extensions for filtering inappropriate web content
- Chat application image screening
- E-commerce product image validation
- Educational platform content safety

## Technical Details
- **Pricing Model**: Free and open source under MIT license
- **Platform Support**: Browser (via TensorFlow.js), Node.js (via @tensorflow/tfjs-node), React Native (via tfjs-react-native)
- **Integration Options**: Direct npm import, script tag bundling, REST API wrapper via Express
- **Data Export**: Returns JSON array with className and probability scores

## Resources
- [Official Website](https://nsfwjs.com/)
- [GitHub Repository](https://github.com/infinitered/nsfwjs)
- [FAQ & Documentation](https://github.com/infinitered/nsfwjs/wiki/FAQ:-NSFW-JS)
- [Announcement Blog Post](https://shift.infinite.red/avoid-nightmares-nsfw-js-ab7b176978b1)
- [React Native Implementation](https://github.com/infinitered/nsfwjs-mobile)
- [NSFW Model Training Details](https://github.com/GantMan/nsfw_model)
- [Community Slack](http://community.infinite.red)

## Notes & Considerations
Model files must be self-hosted for production use; the previously available Cloudfront-hosted model has been moved due to hotlinking issues. Enable TensorFlow.js production mode (`tf.enableProdMode()`) before loading models in production environments. Consider implementing IndexedDB caching to improve load times for returning users. The library requires TensorFlow.js as a peer dependency. Model accuracy varies by model size: smaller MobileNetV2 achieves ~90% while larger models reach ~93% accuracy.
