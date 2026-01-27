---
title: Tool Note - Hanko
vendor: Hanko GmbH
date: 202601011356
categories: [authentication, userManagement, passkeys, openSource, security, webComponents]
pricing: freemium
platforms: [web, linux, docker, kubernetes, selfHosted]
source: https://www.hanko.io
documentation: https://docs.hanko.io
type: tool
---

# Hanko - Modern Open Source Authentication & User Management

## Overview
Hanko is an open source authentication and user management solution designed as an alternative to Auth0, Clerk, WorkOS, and Stytch. Built with privacy-first principles including data minimalism and phishing resistance, it provides a comprehensive authentication API with pre-built web components for rapid integration. Available both as a self-hosted solution and fully managed cloud service (Hanko Cloud), it offers flexibility without vendor lock-in.

## Core Features
- **Passkey-First Authentication**: FIDO2-certified passkey support with WebAuthn for phishing-resistant, passwordless login
- **Multi-Method Auth**: Supports passwords, passcodes, passkeys, OAuth/Social SSO (Google, Apple, GitHub, etc.), and SAML Enterprise SSO
- **Hanko Elements**: Framework-agnostic web components for drop-in login, registration, and user profile UI
- **MFA Support**: TOTP authenticator apps and security keys for two-factor authentication
- **Server-Side Sessions**: Secure session management with remote revocation capabilities
- **Webhooks & APIs**: Event-driven architecture with comprehensive REST API and JWT issuing
- **i18n Support**: Built-in internationalization with custom translation support
- **Custom OIDC/OAuth**: Configure your own identity providers

## Quick Start Guide
1. **Sign up for Hanko Cloud** at `cloud.hanko.io` or clone the repo for self-hosting: `git clone https://github.com/teamhanko/hanko`
2. **Create a new project** in Hanko Cloud console and configure your allowed origins/redirect URLs
3. **Install Hanko Elements** via npm: `npm install @teamhanko/hanko-elements`
4. **Add the auth component** to your app:
   ```html
   <hanko-auth api="https://YOUR-HANKO-API-URL"></hanko-auth>
   ```
5. **Validate sessions** on your backend using Hanko's JWT tokens
6. **Add profile management** with the `<hanko-profile>` component for user self-service

## Use Cases
- SaaS applications requiring secure user authentication and management
- Consumer apps needing passwordless/passkey-first authentication
- Enterprise applications requiring SAML SSO integration
- Fintech/banking apps needing PSD2-compliant authentication
- Startups looking for scalable auth without high costs
- Projects wanting to transition users from passwords to passkeys

## Technical Details
- **Pricing Model**: 
  - Free: 10,000 MAU, 2 production projects
  - Pro: $9/month base + $0.01/MAU over free limit
  - Enterprise: Custom pricing with 99.99% SLA
  - Startup Plan: 1M MAU free (if <$500k ARR or <$1M funding)
- **Platform Support**: Any web framework (React, Vue, Angular, Svelte, vanilla JS), Docker, Kubernetes
- **Integration Options**: REST API, JavaScript SDK (`@teamhanko/hanko-frontend-sdk`), Web Components, Webhooks
- **Data Export**: Full data portability between self-hosted and cloud, no vendor lock-in
- **Tech Stack**: Go backend, TypeScript frontend, API-first, cloud-native architecture
- **Licensing**: AGPL-3.0 (backend), MIT (Elements & SDKs)

## Resources
- [Official Website](https://www.hanko.io)
- [Documentation](https://docs.hanko.io)
- [GitHub Repository](https://github.com/teamhanko/hanko)
- [Quickstart Guide](https://docs.hanko.io/quickstarts)
- [API Reference](https://docs.hanko.io/api-reference/introduction)
- [Discord Community](https://www.hanko.io/community)
- [Live Demo](https://example.hanko.io)
- [Passkeys Demo](https://www.passkeys.io)
- [npm - hanko-elements](https://www.npmjs.com/package/@teamhanko/hanko-elements)
- [npm - hanko-frontend-sdk](https://www.npmjs.com/package/@teamhanko/hanko-frontend-sdk)

## Notes & Considerations
- Hanko Cloud is hosted on AWS Frankfurt (EU) with GDPR compliance—ideal for European data residency requirements
- Passkey support varies by device/browser; consider enabling fallback methods (passcodes/passwords) for broader compatibility
- The backend uses AGPL-3.0 licensing, which requires source code disclosure for modifications in production; commercial licensing available upon request
- Migration between self-hosted and cloud is supported with full data portability
- Framework examples available for Next.js, Nuxt, SvelteKit, Fresh (Deno), and more
- Enterprise plan offers private cloud deployments and alternative hosting providers on request
