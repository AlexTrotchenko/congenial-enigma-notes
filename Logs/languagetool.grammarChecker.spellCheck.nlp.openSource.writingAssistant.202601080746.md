---
title: Tool Note - LanguageTool
vendor: LanguageTool (languagetool-org)
date: 202601080746
categories: [grammarChecker, spellCheck, nlp, openSource, writingAssistant, proofreading]
pricing: freemium
platforms: [web, windows, mac, linux, ios, android]
source: https://languagetool.org
documentation: https://dev.languagetool.org
type: tool
---

# LanguageTool - Open Source Style and Grammar Checker for 25+ Languages

## Overview
LanguageTool is an AI-powered, open-source proofreading tool that detects grammar, spelling, punctuation, and style errors in over 30 languages. It goes beyond simple spell checking to identify complex grammatical mistakes, suggest style improvements, and offer AI-powered paraphrasing. Trusted by organizations like BMW, Spiegel Magazine, and the European Union, it serves writers, professionals, and multilingual users who need reliable writing assistance across platforms.

## Core Features
- **Advanced Grammar & Style Checking**: Detects errors a simple spell checker cannot, including subject-verb agreement, incorrect plural forms, and stylistic issues
- **Multilingual Support**: Comprehensive checking for 25+ languages including English (6 variants), German, Spanish, French, Dutch, Portuguese, Polish, and more
- **AI-Powered Paraphrasing**: Rephrase sentences to be more formal, fluent, simple, or concise
- **Cross-Platform Integration**: Browser extensions (Chrome, Firefox, Edge, Safari, Opera), desktop apps (Windows, macOS), and office plugins (Word, Google Docs, LibreOffice)
- **Personal Dictionary & Style Guide**: Create custom rules and maintain consistent terminology
- **Privacy-Focused**: Browser add-on doesn't store text; LGPL 2.1 open-source core

## Quick Start Guide
1. **Web Editor**: Visit https://languagetool.org and paste text directly into the editor for instant checking
2. **Browser Extension**: Install from Chrome Web Store, Firefox Add-ons, or your browser's extension marketplace
3. **Desktop App**: Download from https://languagetool.org for Windows or macOS native integration
4. **Office Integration**: Install the Microsoft Word add-in or Google Docs add-on for in-app checking
5. **Self-Hosted Server**: Download standalone version from GitHub, run `java -jar languagetool.jar` for local deployment

## Use Cases
- Proofreading professional documents, emails, and business communications
- Academic writing assistance for students and researchers
- Multilingual content creation and translation verification
- Blog posts, social media content, and marketing copy refinement
- Technical documentation and software localization
- Non-native speakers improving written communication

## Technical Details
- **Pricing Model**: Free tier with basic checking (10,000 char limit); Premium ~$4.99/month (annual) or $19.90/month with advanced features, 100,000 char limit, unlimited paraphrasing; Team plans from $9.48/month for 2 users
- **Platform Support**: Web editor, Windows 10+, macOS, Linux (self-hosted), iOS, Android; browser extensions for all major browsers
- **Integration Options**: REST API for developers, Java API, embeddable HTTP server, LibreOffice/OpenOffice extension, Thunderbird add-on
- **Data Export**: Self-hosted version keeps all data local; cloud version stores editor texts with account access

## Resources
- [Official Website](https://languagetool.org)
- [Developer Documentation](https://dev.languagetool.org)
- [HTTP API Documentation](https://languagetool.org/http-api/swagger-ui/)
- [GitHub Repository](https://github.com/languagetool-org/languagetool)
- [Community Forum](https://forum.languagetool.org)
- [Rule Editor](https://community.languagetool.org/ruleEditor2/)
- [Public API Guide](https://dev.languagetool.org/public-http-api)
- [Java API Javadoc](https://languagetool.org/development/api/index.html)

## Notes & Considerations
- The open-source core (LGPL 2.1) can be self-hosted for complete data privacy and unlimited usage
- Building from source requires Java 17+ and Maven; full clone is 500MB+ but shallow clone (~60MB) works for most use cases
- Community Docker images available for containerized deployment
- Premium features like advanced style checking are cloud-only; self-hosted version has basic rule set
- Contributing new error detection rules doesn't require programming knowledge—XML-based rule creation is well documented
- Free version lacks plagiarism detection and in-depth writing reports compared to competitors like Grammarly
