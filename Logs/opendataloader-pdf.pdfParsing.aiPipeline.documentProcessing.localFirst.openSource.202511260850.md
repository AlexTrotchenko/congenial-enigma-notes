---
title: Tool Note - OpenDataLoader PDF
vendor: OpenDataLoader Project (Hancom Inc)
date: 202511260850
categories: [pdfParsing, aiPipeline, documentProcessing, localFirst, openSource, ragPreparation]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/opendataloader-project/opendataloader-pdf
documentation: https://github.com/opendataloader-project/opendataloader-pdf
type: tool
---

# OpenDataLoader PDF - Safe, High-Performance PDF Parsing for AI

## Overview
OpenDataLoader PDF converts PDFs into structured JSON, Markdown, or HTML output ready for modern AI stacks including LLMs, vector search, and RAG pipelines. It reconstructs document layout (headings, lists, tables, reading order) using fast rule-based heuristics that run entirely locally without GPU requirements. A standout feature is built-in AI-safety that automatically filters likely prompt-injection content embedded in PDFs.

## Core Features
- **Rich Structured Output** — Exports to JSON, Markdown, or HTML with full document structure preserved
- **Layout Reconstruction** — Detects headings, lists, tables, images, and reading order for accurate chunking
- **AI-Safety Built-in** — Auto-filters hidden text, off-page content, and tiny text that could contain prompt injections
- **Fast & Lightweight** — Rule-based heuristic processing with high throughput, no GPU required
- **Local-First Privacy** — Runs entirely on your machine with no data leaving your environment
- **Annotated PDF Visualization** — Generates overlay PDFs showing detected structures for debugging
- **OCR Support** — Extracts text from scanned/image-only PDF pages
- **Table AI Option** — Enhanced accuracy for borderless or merged-cell tables

## Quick Start Guide
1. Ensure Java 11+ is installed and available in your system PATH
2. Install via pip: `pip install -U opendataloader-pdf`
3. Basic Python usage:
   ```python
   import opendataloader_pdf
   opendataloader_pdf.run(
       input_path="document.pdf",
       output_folder="output/",
       generate_markdown=True
   )
   ```
4. Or use Docker: `docker run --rm -v "$PWD":/work ghcr.io/opendataloader-project/opendataloader-pdf-cli:latest /work/doc.pdf --markdown`
5. Check output folder for JSON (default) plus Markdown/HTML if specified

## Use Cases
- Preparing PDF documents for RAG (Retrieval-Augmented Generation) pipelines
- Building searchable document indexes for vector databases
- Converting research papers and reports for LLM consumption
- Extracting structured data from invoices, forms, and reports
- Creating accessible Markdown versions of PDF documentation
- Batch processing large document archives for AI training data

## Technical Details
- **Pricing Model**: Free and open source under Mozilla Public License 2.0
- **Platform Support**: Cross-platform (Windows, Mac, Linux) — requires Java 11+ runtime
- **Language SDKs**: Python 3.8+, Node.js (npm), Java (Maven/Gradle)
- **Integration Options**: Python API, Node.js API, Java API, CLI, Docker container
- **Data Export**: JSON (structured), Markdown, HTML, Annotated PDF visualization
- **Version**: 0.0.16 (as of documentation)

## Resources
- [GitHub Repository](https://github.com/opendataloader-project/opendataloader-pdf)
- [AI Safety Documentation](https://github.com/opendataloader-project/opendataloader-pdf/blob/main/docs/AI_SAFETY.md)
- [Java API Javadoc](https://javadoc.io/doc/org.opendataloader/opendataloader-pdf-core/latest/)
- [Maven Central](https://search.maven.org/artifact/org.opendataloader/opendataloader-pdf-core)
- [Java Examples](https://github.com/opendataloader-project/opendataloader-pdf/tree/main/examples/java)
- [GitHub Discussions](https://github.com/hancom-inc/opendataloader-pdf/discussions)
- [Issue Tracker](https://github.com/hancom-inc/opendataloader-pdf/issues)

## Notes & Considerations
- Java 11+ is a hard requirement even when using Python or Node.js wrappers (CLI wraps Java core)
- Node.js package is backend-only and cannot run in browser environments
- AI-safety filters are enabled by default; use `content_safety_off` parameter to disable specific filters if needed (options: `all`, `hidden-text`, `off-page`, `tiny`)
- For tables with complex layouts (borderless, merged cells), enable Table AI option for improved accuracy
- Output JSON schema is well-documented with specific fields for each content type (tables, lists, headings, etc.)
- Line breaks and hyphenation are removed by default; use `keep_line_breaks=True` to preserve original formatting
- Images can optionally be extracted and linked in Markdown output with `add_image_to_markdown=True`
