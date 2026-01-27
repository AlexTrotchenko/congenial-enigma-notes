---
title: Literature Note - Build your first AI Agent with Gemini, n8n and Google Cloud Run
author: Philipp Schmid
date: 202511100936
tags: [workflowAutomation, googleCloud, aiAgents, gemini, n8n, cloudInfrastructure]
source: https://www.philschmid.de/n8n-cloud-run-gemini
type: literature
---

# Key Takeaways from Build your first AI Agent with Gemini, n8n and Google Cloud Run

## Summary
This tutorial demonstrates how to deploy n8n, an open-source workflow automation platform, on Google Cloud Run with PostgreSQL for persistent storage and integrate it with Google Gemini to create functional AI agents. The guide provides a complete infrastructure-as-code approach using gcloud CLI, covering everything from project setup to deploying a working agent that can interact with external tools through the Model Context Protocol (MCP).

## Key Points
- n8n can be deployed on Google Cloud Run as a serverless container, connected to Cloud SQL PostgreSQL for persistent workflow storage, with proper use of Secret Manager for credential management and CPU throttling disabled to support background processes
- The deployment architecture uses IAM service accounts with minimal necessary permissions, connecting to Cloud SQL via Unix sockets rather than IP addresses for enhanced security
- AI agents in n8n are constructed through a visual interface where you can configure chat models (like Gemini 2.5), memory systems, and tools that extend the agent's capabilities beyond text generation
- The Model Context Protocol (MCP) provides a standardized way to connect language models to external data sources without custom integration code, enabling agents to interact with APIs and services
- Production considerations include implementing Queue Mode to separate main processes from execution workers, optimizing Cloud Run concurrency and CPU boost settings, implementing execution data pruning, and exploring human-in-the-loop approval patterns for sensitive actions
- The n8n ecosystem includes over 600 community-built workflows specifically for Gemini integration, providing ready-made templates and patterns for common automation scenarios
- Resource cleanup is critical in cloud environments to avoid ongoing costs, requiring deletion of Cloud Run services, SQL instances, secrets, service accounts, and potentially the entire project

## Questions
- How does n8n's Queue Mode architecture scale compared to traditional vertical scaling approaches, and what are the tradeoffs in terms of latency and resource utilization?
- What are the security implications of using the Model Context Protocol versus custom API integrations, particularly regarding data validation and rate limiting?
- How do you design effective human-in-the-loop workflows that balance automation efficiency with appropriate oversight for high-stakes decisions?
- What strategies exist for managing version control and testing of visual workflow automations like n8n in team environments?

## Source
[Original Article](https://www.philschmid.de/n8n-cloud-run-gemini)
