---
title: Literature Note - Code execution with MCP: building more efficient AI agents
author: Adam Jones and Conor Kelly
date: 202511051650
tags: [aiAgents, mcp, codeExecution, efficiency, tokenOptimization, toolIntegration]
source: https://www.anthropic.com/engineering/code-execution-with-mcp
type: literature
---

# Key Takeaways from Code execution with MCP: building more efficient AI agents

## Summary
The Model Context Protocol (MCP) provides a universal standard for connecting AI agents to external tools and data, but as agents scale to hundreds or thousands of tools, loading all tool definitions upfront and passing intermediate results through the context window creates inefficiency. By presenting MCP servers as code APIs within execution environments instead of direct tool calls, agents can load tools on-demand, process data locally before returning results, and reduce token consumption by up to 98.7% while maintaining full functionality.

## Key Points
- Traditional MCP implementations load all tool definitions into context upfront, causing hundreds of thousands of tokens to be processed before the agent even reads a request, which increases latency and costs significantly
- Intermediate tool results that flow through the model context consume additional tokens—a simple task like copying a 2-hour meeting transcript between systems could require processing an extra 50,000 tokens twice
- Presenting MCP tools as filesystem-based code APIs allows agents to discover and load only needed tool definitions on-demand through directory exploration, reducing token usage from 150,000 to 2,000 tokens in some cases
- Code execution enables agents to filter, transform, and aggregate data within the execution environment before returning results, so a 10,000-row spreadsheet can be processed down to just the relevant 5 rows that reach the model's context
- Control flow operations like loops, conditionals, and error handling become more efficient as native code rather than chained tool calls that require model evaluation at each step
- Privacy-preserving workflows are possible through automatic tokenization of sensitive data in the MCP client layer, allowing PII to flow between systems without ever entering the model's context
- Agents can persist state across operations and build reusable skill libraries by saving working code implementations to the filesystem, creating higher-level capabilities that evolve over time

## Questions
- How do we balance the complexity and security overhead of code execution environments against the token efficiency gains, especially for simpler use cases?
- What are the best practices for determining which tools should be presented as direct tool calls versus code APIs in a hybrid implementation?
- How can the "progressive disclosure" pattern be optimized to help agents discover relevant tools efficiently without requiring extensive filesystem navigation?
- What mechanisms ensure that agent-generated code interacting with MCP servers remains safe, deterministic, and auditable at scale?

## Source
[Original Article](https://www.anthropic.com/engineering/code-execution-with-mcp)
