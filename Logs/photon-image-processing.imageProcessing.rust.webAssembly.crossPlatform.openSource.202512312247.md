---
title: Tool Note - Photon
vendor: Silvia O'Dwyer
date: 202512312247
categories: [imageProcessing, rust, webAssembly, crossPlatform, openSource, mediaLibrary]
pricing: free
platforms: [web, windows, mac, linux, nodejs, cloudflareWorkers]
source: https://silvia-odwyer.github.io/photon/
documentation: https://docs.rs/photon-rs/
type: tool
---

# Photon - High-Performance Rust/WebAssembly Image Processing Library

## Overview
Photon is a blazing-fast image processing library written in pure Rust that compiles to WebAssembly for near-native performance in web browsers. It provides 96+ customizable functions for image manipulation, supporting native Rust applications, browser-based apps via WASM, and Node.js environments. The library is designed for developers who need performant, cross-platform image processing with security guaranteed by Rust's memory safety.

## Core Features
- **Near-native performance** via WebAssembly compilation for browser and Node.js environments
- **96+ image processing functions** including filters, effects, corrections, and transformations
- **Pure Rust codebase** ensuring memory safety and security with zero unsafe dependencies
- **Multi-format support** for PNG, JPEG, BMP, ICO, TIFF, and WebP image formats
- **Cross-platform deployment** supporting native Rust, web browsers, Node.js, and Cloudflare Workers
- **30+ preset filters** with full customization options for hue, saturation, brightness, and color channels

## Quick Start Guide
1. **For Rust projects**: Add `photon-rs = "0.3.2"` to your Cargo.toml dependencies
2. **For web (bundler)**: Run `npm install @silvia-odwyer/photon`
3. **For Node.js**: Run `npm install @silvia-odwyer/photon-node`
4. **Import and initialize**: Load an image using `open_image()` (native) or from canvas (web)
5. **Apply effects**: Call functions like `photon_rs::channels::alter_red_channel(&mut img, 40)`
6. **Export result**: Save with `save_image()` (native) or render to canvas (web)

## Use Cases
- Building browser-based photo editing applications with native-like performance
- Server-side image processing pipelines in Rust microservices
- Real-time image filters and effects in web applications
- Batch image processing for media asset management
- Edge computing image manipulation with Cloudflare Workers
- Creating custom Instagram-style filters for social media apps

## Technical Details
- **Pricing Model**: Free and open source (Apache 2.0 license)
- **Platform Support**: Native (Windows, macOS, Linux), Web browsers (Chrome, Firefox, Safari, Edge), Node.js, Cloudflare Workers
- **Integration Options**: Rust crate via Cargo, npm package for JavaScript/TypeScript, wasm-pack for custom WASM builds
- **Data Export**: Supports saving to PNG, JPEG, BMP, ICO, TIFF, WebP formats

## Resources
- [Official Website](https://silvia-odwyer.github.io/photon/)
- [Documentation (Rust)](https://docs.rs/photon-rs/)
- [Getting Started Guide](https://silvia-odwyer.github.io/photon/guide)
- [All Available Functions](https://silvia-odwyer.github.io/photon/docs/photon/all.html)
- [GitHub Repository](https://github.com/silvia-odwyer/photon)
- [Live Demo](https://silvia-odwyer.github.io/photon/demo.html)
- [npm Package](https://www.npmjs.com/package/@silvia-odwyer/photon)
- [Crates.io](https://crates.io/crates/photon_rs)
- [Community (Gitter)](https://gitter.im/photonlibrary/community)

## Notes & Considerations
Current stable version is 0.3.2 with features including duotone filters, image rotation, dithering, and cropping. Building the WebAssembly package requires wasm-pack installation. The library wraps the Rust `image` crate while providing higher-level abstractions. For maximum performance in browsers, ensure WebAssembly is supported (all modern browsers). Active development with 42 contributors and 3.3k GitHub stars indicates healthy community support. Cloudflare Workers integration requires the separate `@cf-wasm/photon` package.
