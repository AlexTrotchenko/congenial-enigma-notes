---
title: Tool Note - useSend
vendor: useSend (KMKoushik)
date: 202601011407
categories: [email, openSource, selfHosted, api, developerTools, transactionalEmail]
pricing: freemium
platforms: [web, selfHosted, docker]
source: https://usesend.com
documentation: https://docs.usesend.com
type: tool
---

# useSend - Open Source Email Sending Infrastructure

## Overview
useSend is an open-source email platform built on Amazon SES that provides a modern alternative to Resend, SendGrid, and Postmark. It enables developers to send transactional and marketing emails reliably and affordably through a clean dashboard and REST API. The platform can be self-hosted or used as a managed cloud service, offering full control over email infrastructure without vendor lock-in.

## Core Features
- **Transactional & Marketing Emails**: Send both types through unified REST API with typed SDKs for TypeScript, Python, Go, and PHP
- **Real-time Analytics Dashboard**: Track deliveries, opens, clicks, bounces, and unsubscribes with searchable logs and filtering
- **Visual Email Editor**: Notion-like WYSIWYG editor for designing campaigns without code, with template reuse and variable personalization
- **Contact Management**: Manage contacts, lists, and consent with automatic updates from bounces and complaints
- **SMTP Relay Support**: Drop-in SMTP relay compatible with any app or framework including Supabase
- **Webhook & Scheduling**: Built-in webhook support and schedule API for automated workflows
- **BYO AWS Credentials**: Use your own AWS account for complete control and cost optimization

## Quick Start Guide
1. **Cloud**: Sign up at [app.usesend.com](https://app.usesend.com) and authenticate with GitHub
2. **Add Domain**: Configure your sending domain with DNS verification
3. **Configure AWS SES**: Add your AWS credentials and configure SES region (us-east-1 recommended)
4. **Get API Key**: Generate an API key from the dashboard
5. **Send First Email**: Use SDK or REST API to send your first email
```typescript
import { UseSend } from "usesend-js";
const usesend = new UseSend("us_12345");
usesend.emails.send({
  to: "[email protected]",
  from: "[email protected]",
  subject: "Hello from useSend",
  html: "<p>Your first email!</p>"
});
```

## Use Cases
- Transactional emails (password resets, order confirmations, notifications)
- Marketing newsletters and product updates
- Bulk email campaigns with subscription management
- Self-hosted email infrastructure for privacy-conscious organizations
- Replacing expensive email SaaS with cost-effective open-source solution
- Supabase and other platform integrations via SMTP relay

## Technical Details
- **Pricing Model**: Free tier (3,000 emails/month, 100/day). Paid starts at $10/month with $0.0004/transactional and $0.001/marketing email
- **Platform Support**: Web dashboard, Docker (DockerHub & GHCR), Railway one-click deploy, self-hosted on any infrastructure
- **Integration Options**: REST API, typed SDKs (TypeScript, Python, Go, PHP), SMTP relay, webhooks
- **Data Export**: CSV export for email logs and contacts
- **Tech Stack**: Next.js, Prisma, Tailwind, shadcn/ui, tRPC, Hono, Redis
- **License**: AGPL-3.0

## Resources
- [Official Website](https://usesend.com)
- [Documentation](https://docs.usesend.com)
- [GitHub Repository](https://github.com/usesend/usesend)
- [Self-Hosting Guide](https://docs.usesend.com/self-hosting/overview)
- [Local Development Guide](https://docs.usesend.com/get-started/local)
- [Discord Community](https://discord.gg/BU8n8pJv8S)
- [Docker Hub](https://hub.docker.com/r/usesend/usesend)
- [Railway Deploy](https://railway.com/deploy/usesend)

## Notes & Considerations
Currently in public beta with active development. Requires AWS SES account (must exit sandbox mode for production). Future roadmap includes SMS, push notifications, and WhatsApp support. Self-hosters should consider sponsoring the project. GitHub authentication required for login. Redis and PostgreSQL dependencies for self-hosting. 3.6k+ GitHub stars and 37 contributors indicate healthy community adoption.
