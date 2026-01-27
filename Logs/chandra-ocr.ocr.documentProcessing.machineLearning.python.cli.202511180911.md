---
title: Tool Note - Chandra
vendor: Datalab
date: 202511180911
categories: [ocr, documentProcessing, machineLearning, python, cli, visionLanguageModel]
pricing: freemium
platforms: [linux, mac, windows]
source: https://github.com/datalab-to/chandra
documentation: https://github.com/datalab-to/chandra
type: tool
---

# Chandra - High-Accuracy OCR with Layout Preservation

## Overview
Chandra is a highly accurate OCR model that converts images and PDFs into structured HTML, Markdown, or JSON while preserving complete layout information. It excels at handling complex documents including tables, forms, handwriting, math equations, and multi-column layouts with support for 40+ languages. Available for local deployment via HuggingFace or vLLM server, with a hosted API option.

## Core Features
- Converts documents to Markdown, HTML, or JSON with detailed layout preservation
- Excellent handwriting recognition including doctor's notes and math homework
- Accurate form reconstruction with checkbox detection
- Superior table extraction even for complex financial documents
- Math equation support including LaTeX notation
- Image and diagram extraction with captions and structured data
- 40+ language support
- Two inference modes: local (HuggingFace) and remote (vLLM server)
- Interactive Streamlit app for testing
- 83.1% overall score on olmocr benchmark (highest among tested models)

## Quick Start Guide
1. Install via pip: `pip install chandra-ocr`
2. For HuggingFace method, also install flash attention for better performance
3. Launch vLLM server for production use: `chandra_vllm`
4. Process a document: `chandra input.pdf ./output --method vllm`
5. Or use local model: `chandra input.pdf ./output --method hf`
6. Try interactive demo: `chandra_app`

## Use Cases
- Converting scanned documents and PDFs to editable text
- Digitizing handwritten forms and notes
- Extracting tables from financial reports and academic papers
- Processing medical records and prescriptions
- Archiving newspapers and historical documents
- Converting textbook pages with math equations
- Batch processing document directories for data pipelines

## Technical Details
- **Pricing Model**: Apache 2.0 code license; Model weights use modified OpenRAIL-M (free for research, personal use, startups under $2M). Commercial licensing available at datalab.to/pricing
- **Platform Support**: Python package compatible with Linux, macOS, Windows; Requires GPU for optimal performance
- **Integration Options**: CLI tool, Python library, vLLM server API, hosted API at datalab.to
- **Data Export**: Markdown (.md), HTML (.html), JSON (metadata), extracted images in subdirectory

## Resources
- [GitHub Repository](https://github.com/datalab-to/chandra)
- [Hosted API](https://www.datalab.to/)
- [Free Playground](https://www.datalab.to/playground)
- [Discord Community](https://discord.gg//KuZwXNGnfH)
- [Pricing/Commercial Licensing](https://www.datalab.to/pricing?utm_source=gh-chandra)

## Notes & Considerations
Model weights have licensing restrictions for competitive commercial use against Datalab's API - requires commercial license for such use cases. GPU recommended for local inference; vLLM server mode requires Docker. Free tier startups limited to under $2M funding/revenue. Flash attention installation recommended for HuggingFace method to improve performance. Configuration available via environment variables or local.env file.
