---
title: Tool Note - AWS Bedrock AgentCore SDK (Python)
vendor: Amazon Web Services (AWS)
date: 202512290144
categories: [aiAgents, serverless, python, aws, mcpTools, enterpriseAI]
pricing: consumption-based
platforms: [linux, mac, windows]
source: https://github.com/aws/bedrock-agentcore-sdk-python
documentation: https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/what-is-bedrock-agentcore.html
type: tool
---

# AWS Bedrock AgentCore SDK (Python) - Deploy AI Agents to Production with Zero Infrastructure

## Overview
Amazon Bedrock AgentCore SDK for Python transforms any AI agent into a production-ready application with AWS-managed infrastructure. It provides framework-agnostic primitives for runtime, memory, authentication, and tools, allowing developers to deploy agents built with Strands, LangGraph, CrewAI, Autogen, or custom frameworks without managing servers, containers, or scaling. The SDK delivers enterprise-grade features including session isolation, persistent memory, and built-in observability.

## Core Features
- **Serverless Runtime** — Secure, session-isolated compute with fast cold starts for real-time interactions and extended runtime for async agents
- **Memory Management** — Short-term memory for multi-turn conversations and long-term memory that persists across sessions with shareable memory stores
- **Gateway (MCP Tools)** — Convert APIs, Lambda functions, and services into Model Context Protocol (MCP)-compatible tools with minimal code
- **Identity & Auth** — Integrated AWS and third-party authentication (Cognito, Okta, Azure Entra ID, Auth0) with OAuth and API key management
- **Code Interpreter** — Isolated sandbox environments for secure code execution in Python, JavaScript, and TypeScript
- **Cloud Browser** — Managed browser runtime for web automation, form filling, navigation, and data extraction
- **Observability** — OpenTelemetry-compatible tracing, debugging, and performance monitoring with CloudWatch integration
- **Policy Control** — Natural language or Cedar-based policy rules for deterministic governance of agent actions

## Quick Start Guide
1. Install the SDK via pip:
   ```bash
   pip install bedrock-agentcore
   ```
2. Configure AWS credentials (ensure IAM permissions for Bedrock AgentCore services)
3. Create your agent application:
   ```python
   from bedrock_agentcore import BedrockAgentCoreApp
   app = BedrockAgentCoreApp()
   
   @app.entrypoint
   def my_agent(request):
       return process_query(request.get("prompt"))
   
   app.run()
   ```
4. Deploy using the [Bedrock AgentCore Starter Toolkit](https://github.com/aws/bedrock-agentcore-starter-toolkit) for rapid prototyping
5. For production, use [AWS CDK](https://docs.aws.amazon.com/cdk/api/v2/docs/aws-cdk-lib.aws_bedrockagentcore-readme.html) for infrastructure-as-code deployment

## Use Cases
- **Customer Support Agents** — Multi-step reasoning with RAG, ticketing APIs, and order management tools
- **Data Analysis Automation** — Natural language queries generating and executing Python code for statistics and visualizations
- **Travel Booking Systems** — Automated web interactions for searching flights, hotels, and completing bookings
- **HR Assistants** — Access internal policies, leave balances, benefits, and payroll via converted API tools
- **Coding Assistants** — Context-aware code generation with session and cross-session memory for personalization
- **Multi-Agent Platforms** — Centralized deployment of specialized agents with shared memory and governed tool access

## Technical Details
- **Pricing Model**: Consumption-based with no upfront commitments; pay only for active CPU/memory usage (I/O wait time is free). New AWS customers receive up to $200 in Free Tier credits.
  - Runtime/Browser/Code Interpreter: $0.0895/vCPU-hour, $0.00945/GB-hour
  - Gateway: $0.005/1K API invocations, $0.025/1K search queries
  - Memory: $0.25/1K events (short-term), $0.75/1K records/month (long-term)
  - Identity: $0.010/1K token requests (free when using Runtime/Gateway)
- **Platform Support**: Python 3.x on any OS; requires AWS account with appropriate IAM permissions
- **Framework Compatibility**: Works with Strands, LangGraph, LangChain, CrewAI, Autogen, LlamaIndex, Google ADK, OpenAI Agents SDK, and custom implementations
- **Integration Options**: MCP protocol, OpenAPI specs, Lambda functions, A2A protocol, any REST APIs
- **Data Export**: OpenTelemetry format for observability data; memory records accessible via API

## Resources
- [Official Website](https://aws.amazon.com/bedrock/agentcore/)
- [Documentation](https://docs.aws.amazon.com/bedrock-agentcore/latest/devguide/what-is-bedrock-agentcore.html)
- [GitHub Repository](https://github.com/aws/bedrock-agentcore-sdk-python)
- [Samples & Examples](https://github.com/awslabs/amazon-bedrock-agentcore-samples)
- [Starter Toolkit](https://github.com/aws/bedrock-agentcore-starter-toolkit)
- [Boto3 SDK Reference](https://boto3.amazonaws.com/v1/documentation/api/latest/reference/services/bedrock-agentcore-control.html)
- [Pricing Details](https://aws.amazon.com/bedrock/agentcore/pricing/)
- [Discord Community](https://discord.gg/bedrockagentcore-preview)
- [PyPI Package](https://pypi.org/project/bedrock-agentcore)

## Notes & Considerations
- **AWS Account Required**: All services run on AWS infrastructure and require proper IAM configuration
- **Active Consumption Billing**: Unlike traditional compute, you're only charged for active CPU usage—I/O wait during LLM responses and API calls incurs no CPU charges (memory billed at peak usage per second)
- **128MB Minimum Memory**: Billing applies a minimum memory threshold regardless of actual usage
- **Preview Features**: Policy and Evaluations are currently in preview and offered at no charge
- **Storage Costs**: Container deployment uses ECR (billed separately); direct code deployment uses S3 Standard rates (starting Feb 27, 2026)
- **Network Transfer**: Standard EC2 data transfer rates apply
- **Version**: Current release is v1.1.1 (as of Dec 2025), Apache 2.0 license
