---
title: Literature Note - Skills explained: How Skills compares to prompts, Projects, MCP, and subagents
author: Anthropic
date: 202511150935
tags: [aiAgents, claudeTools, promptEngineering, workflowAutomation, knowledgeManagement, agentic]
source: https://www.claude.com/blog/skills-explained
type: literature
---

# Key Takeaways from Skills explained: How Skills compares to prompts, Projects, MCP, and subagents

## Summary
The article provides a comprehensive guide to understanding how different components of Claude's agentic ecosystem work together to create sophisticated AI workflows. Skills are dynamically-loaded folders containing specialized procedural knowledge, while prompts provide ephemeral conversational instructions, Projects maintain persistent context, subagents handle independent task delegation, and MCP (Model Context Protocol) enables connectivity to external data sources. The real power emerges when these building blocks are strategically combined based on specific use cases.

## Key Points
- Skills use progressive disclosure architecture, loading metadata first (~100 tokens) to determine relevance, then full instructions (<5k tokens) when matched, and finally executable code or files only as needed - enabling efficient context management even with many available Skills
- Each building block serves a distinct purpose in the ecosystem: prompts for moment-to-moment instructions, Projects for background knowledge within workspaces, Skills for procedural expertise across conversations, subagents for specialized independent execution with tool permissions, and MCP for universal tool connectivity
- Skills are portable and reusable across all Claude instances and conversations, making them ideal for organizational workflows, domain expertise, and personal preferences that need consistent application without repeated explanation
- The distinction between Skills and subagents is purpose-driven: Skills teach "how to do things" and work everywhere, while subagents are self-contained agents for specific workflows with isolated context and restricted tool access
- Complex agentic workflows combine multiple building blocks strategically - for example, a research agent might use Project context for background knowledge, MCP connections for data access, Skills for analytical frameworks, subagents for specialized task execution, and prompts for conversational refinement
- Skills transform repeated prompts into persistent capabilities - if you find yourself typing the same instructions across multiple conversations (like "review code for security vulnerabilities using OWASP standards"), it's time to create a Skill instead

## Questions
- How do organizations effectively manage governance, versioning, and quality control when Skills become critical to business operations and are shared across teams?
- What are the practical performance limits of Skills' progressive disclosure when dealing with hundreds of potentially relevant Skills in enterprise environments?
- How should developers decide the optimal granularity when creating Skills - when is a capability too specific to warrant its own Skill versus being part of a broader one?
- What strategies exist for preventing Skill proliferation and duplication in collaborative environments where multiple team members may create similar capabilities?

## Source
[Original Article](https://www.claude.com/blog/skills-explained)
