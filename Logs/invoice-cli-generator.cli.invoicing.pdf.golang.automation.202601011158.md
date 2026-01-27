---
title: Tool Note - Invoice
vendor: Maas Lalani
date: 202601011158
categories: [cli, invoicing, pdf, golang, automation, freelance]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/maaslalani/invoice
documentation: https://github.com/maaslalani/invoice#readme
type: tool
---

# Invoice - Command Line Invoice Generator

## Overview
Invoice is a lightweight command-line tool written in Go that generates professional PDF invoices directly from your terminal. Designed for freelancers, developers, and small businesses who prefer keyboard-driven workflows, it supports multiple line items, tax/discount calculations, custom logos, and configuration via environment variables or JSON/YAML files.

## Core Features
- Generate polished PDF invoices with a single command
- Support for multiple line items with individual quantities and rates
- Automatic tax and discount calculations
- Custom logo support for branded invoices
- Environment variable configuration for repeated invoice details
- JSON/YAML config file import for template-based generation
- Customizable output file path and naming

## Quick Start Guide
1. Install via Go: `go install github.com/maaslalani/invoice@main` (or download binary from releases)
2. Generate a basic invoice: `invoice generate --from "Your Company" --to "Client Name" --item "Service" --quantity 1 --rate 100`
3. Open the generated PDF: `open invoice.pdf` (default output location)
4. Add tax/discount: append `--tax 0.13 --discount 0.10` to your command
5. Set environment variables for repeated fields: `export INVOICE_FROM="Your Company"`
6. Create a JSON config file for complex recurring invoices

## Use Cases
- Freelancers billing clients for project work
- Developers automating invoice generation in scripts
- Small businesses needing quick, no-frills invoice creation
- Contractors tracking billable hours and materials
- Integration into automated billing pipelines

## Technical Details
- **Pricing Model**: Free and open source (MIT License)
- **Platform Support**: Cross-platform CLI (Windows, macOS, Linux) - requires Go or pre-built binary
- **Integration Options**: Shell scripts, CI/CD pipelines, cron jobs; supports JSON/YAML import
- **Data Export**: PDF output with customizable filename and location

## Resources
- [Official Repository](https://github.com/maaslalani/invoice)
- [Documentation / README](https://github.com/maaslalani/invoice#readme)
- [Releases / Downloads](https://github.com/maaslalani/invoice/releases)
- [Issues / Feature Requests](https://github.com/maaslalani/invoice/issues)
- [Contributing Guide](https://github.com/maaslalani/invoice/blob/main/CONTRIBUTING.md)

## Notes & Considerations
Requires Go 1.x for installation via `go install`, alternatively use pre-built binaries from releases page. Custom invoice templates are available upon request by contacting the maintainer directly. The tool uses the Inter font family embedded in the repository. Environment variables use the `INVOICE_` prefix (e.g., `INVOICE_LOGO`, `INVOICE_FROM`, `INVOICE_TAX`). Currently at version 0.1.0 with active community development and 2.1k GitHub stars.
