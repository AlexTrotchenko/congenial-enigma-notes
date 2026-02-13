---
title: Tool Note - PDF-Extract-Kit
vendor: OpenDataLab
date: 202602112109
categories: [pdfParsing, ocr, layoutDetection, formulaRecognition, tableRecognition, openSource]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/opendatalab/PDF-Extract-Kit
documentation: https://pdf-extract-kit.readthedocs.io/en/latest/
type: tool
---

# PDF-Extract-Kit - Comprehensive Toolkit for High-Quality PDF Content Extraction

## Overview

PDF-Extract-Kit is a powerful open-source toolkit from OpenDataLab designed to efficiently extract high-quality content from complex and diverse PDF documents. It integrates leading document parsing models for layout detection, formula detection, formula recognition, OCR, and table recognition. The modular design allows users to easily combine models for various applications. Note: For full PDF-to-Markdown conversion, use the companion project [MinerU](https://github.com/opendatalab/MinerU).

## Core Features

- **Layout detection** — locate different elements: images, tables, text, titles, formulas (DocLayout-YOLO, YOLO-v10, LayoutLMv3)
- **Formula detection** — find inline and block formulas in documents (YOLOv8)
- **Formula recognition** — convert formula images to LaTeX source code (UniMERNet)
- **OCR** — extract text content including location and recognition (PaddleOCR)
- **Table recognition** — convert table images to LaTeX/HTML/Markdown (StructEqTable, TableMaster)
- **Modular design** — mix and match models via config files
- **Diverse document support** — fine-tuned for papers, textbooks, reports, financial docs
- **Robust to noise** — handles blurring, watermarks, and complex layouts

## Model Overview

| Task | Models |
|------|--------|
| Layout Detection | DocLayout-YOLO, YOLO-v10, LayoutLMv3 |
| Formula Detection | YOLOv8 (fine-tuned) |
| Formula Recognition | UniMERNet |
| OCR | PaddleOCR |
| Table Recognition | StructEqTable (InternVL2-1B), TableMaster |
| Reading Order | Coming Soon |

## Quick Start Guide

1. Create environment:
   ```bash
   conda create -n pdf-extract-kit-1.0 python=3.10
   conda activate pdf-extract-kit-1.0
   pip install -r requirements.txt
   ```
2. Download model weights from [tutorial](https://pdf-extract-kit.readthedocs.io/en/latest/get_started/pretrained_model.html)
3. Run detection scripts:
   ```bash
   # Layout detection
   python scripts/layout_detection.py --config=configs/layout_detection.yaml
   
   # Formula detection
   python scripts/formula_detection.py --config=configs/formula_detection.yaml
   
   # OCR
   python scripts/ocr.py --config=configs/ocr.yaml
   
   # Formula recognition
   python scripts/formula_recognition.py --config=configs/formula_recognition.yaml
   
   # Table recognition
   python scripts/table_parsing.py --config configs/table_parsing.yaml
   ```
4. Results saved to `outputs/` folder

## Use Cases

- **Academic paper processing** — extract formulas, tables, and text from research papers
- **Document digitization** — convert scanned documents to structured data
- **RAG pipelines** — extract high-quality content for AI retrieval systems
- **Financial document parsing** — handle complex layouts in reports
- **Textbook extraction** — process educational materials with mixed content
- **Data annotation workflows** — prepare training data for document AI models

## Technical Details

- **Pricing Model:** Free and open-source (AGPL-3.0 license)
- **Platform Support:** Python 3.10+, GPU recommended (CPU version available)
- **Key Dependencies:** PyTorch, PaddleOCR, YOLO, DocLayout-YOLO
- **Output Formats:** Detection boxes, LaTeX (formulas), HTML/Markdown (tables)
- **Related Project:** [MinerU](https://github.com/opendatalab/MinerU) for full PDF-to-Markdown conversion

## Resources

- [GitHub Repository](https://github.com/opendatalab/PDF-Extract-Kit)
- [Documentation](https://pdf-extract-kit.readthedocs.io/en/latest/)
- [Model Weights Download](https://pdf-extract-kit.readthedocs.io/en/latest/get_started/pretrained_model.html)
- [MinerU (PDF to Markdown)](https://github.com/opendatalab/MinerU)
- [UniMERNet (Formula Recognition)](https://github.com/opendatalab/UniMERNet)
- [DocLayout-YOLO](https://github.com/opendatalab/DocLayout-YOLO)
- [Discord Community](https://discord.gg/Tdedn9GTXq)

## Notes & Considerations

PDF-Extract-Kit is a "model toolbox" — it provides high-quality extraction components but doesn't handle document reconstruction (PDF to Markdown). For that, use MinerU which combines PDF-Extract-Kit models with engineering optimizations. The AGPL-3.0 license (due to YOLO and PyMuPDF dependencies) requires open-sourcing derivative works. Models are fine-tuned on diverse document annotations to handle real-world complexity beyond academic datasets. StructEqTable now supports Chinese recognition and multi-format output (LaTeX/HTML/Markdown). Reading order sorting is listed as coming soon.
