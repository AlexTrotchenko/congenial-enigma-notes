---
title: Tool Note - TRELLIS.2
vendor: Microsoft Research
date: 202412221643
categories: [imageTo3D, generativeAI, pbrMaterials, deepLearning, computerVision, 3dModeling]
pricing: free
platforms: [linux]
source: https://github.com/microsoft/TRELLIS.2
documentation: https://microsoft.github.io/TRELLIS.2
type: tool
---

# TRELLIS.2 - State-of-the-Art Image-to-3D Generation with PBR Materials

## Overview
TRELLIS.2 is a 4-billion parameter 3D generative model from Microsoft Research that converts single images into high-fidelity 3D assets with full PBR (Physically Based Rendering) materials. It leverages a novel "field-free" sparse voxel structure called O-Voxel to handle complex topologies including open surfaces, non-manifold geometry, and internal structures while generating base color, roughness, metallic, and opacity textures.

## Core Features
- High-resolution generation at 512³ to 1536³ voxel resolution with exceptional speed (~3s to ~60s on H100)
- O-Voxel representation handles arbitrary topology including open surfaces, non-manifold geometry, and enclosed structures
- Full PBR material support including base color, roughness, metallic, and opacity channels
- Sparse 3D VAE with 16× spatial downsampling for compact latent representation
- Minimalist processing pipeline: textured mesh to O-Voxel in <10s (CPU), O-Voxel to mesh in <100ms (CUDA)
- GLB export with optional transparency and texture baking up to 4096px

## Quick Start Guide
1. Clone repository: `git clone -b main https://github.com/microsoft/TRELLIS.2.git --recursive`
2. Install dependencies with setup script: `. ./setup.sh --new-env --basic --flash-attn --nvdiffrast --nvdiffrec --cumesh --o-voxel --flexgemm`
3. Download pretrained weights automatically from Hugging Face on first run
4. Run minimal example: `python example.py` to generate from sample image
5. Launch web demo: `python app.py` for interactive browser interface
6. Export results as .mp4 video preview or .glb for use in 3D software

## Use Cases
- Converting concept art and product images to 3D models
- Rapid prototyping for game assets and virtual environments
- Generating 3D assets for AR/VR applications
- Creating PBR-ready models for architectural visualization
- Building training data for other 3D ML pipelines
- Automating 3D asset creation workflows

## Technical Details
- **Pricing Model**: Completely free and open source under MIT License
- **Platform Support**: Linux only (tested on Ubuntu), requires NVIDIA GPU with 24GB+ VRAM (A100/H100 verified)
- **Integration Options**: Python API, Gradio web interface, GLB export for standard 3D software
- **Data Export**: GLB format with PBR textures, MP4 video renders, supports decimation to 1M faces

## Requirements
- CUDA Toolkit 12.4 (recommended)
- Python 3.8+
- PyTorch 2.6.0
- 24GB+ GPU memory minimum
- Conda for environment management

## Resources
- [Official Repository](https://github.com/microsoft/TRELLIS.2)
- [Project Website](https://microsoft.github.io/TRELLIS.2)
- [Hugging Face Model](https://huggingface.co/microsoft/TRELLIS.2-4B)
- [Live Demo on Hugging Face Spaces](https://huggingface.co/spaces/microsoft/TRELLIS.2)
- [FlexGEMM (Sparse Convolution)](https://github.com/JeffreyXiang/FlexGEMM)
- [CuMesh (CUDA Mesh Utils)](https://github.com/JeffreyXiang/CuMesh)

## Notes & Considerations
Currently Linux-only with significant GPU requirements (24GB+ VRAM). GLB exports default to OPAQUE mode; transparency requires manual alpha channel connection in 3D software. Training code release scheduled for end of December 2025. Shape-conditioned texture generation coming before 12/24/2025. Dependencies include nvdiffrast and nvdiffrec under separate NVIDIA licenses. Installation can take considerable time due to compilation requirements for CUDA kernels.
