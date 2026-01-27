---
title: Tool Note - Sidekick
vendor: MightyMoud
date: 202601011225
categories: [deployment, selfHosted, devOps, cli, docker, vps]
pricing: free
platforms: [mac, linux]
source: https://github.com/MightyMoud/sidekick
documentation: https://www.sidekickdeploy.com/docs/
type: tool
---

# Sidekick - Bare Metal to Production Ready in Minutes

## Overview
Sidekick is an open-source CLI tool that transforms a bare VPS into a production-ready deployment platform, offering a self-hosted alternative to services like Fly.io. It automates VPS setup, Docker deployment, SSL certificates, and zero-downtime deployments, making it ideal for developers who want full control over hosting their side projects without vendor lock-in.

## Core Features
- **One-command VPS setup** that installs Docker, Traefik, SOPS, and configures security best practices
- **Deploy any Dockerfile-based application** with automatic image building and transfer to VPS
- **Zero downtime deployments** ensuring no traffic is lost during updates
- **Automatic SSL certificates** via Traefik with zero configuration required
- **Built-in secrets management** using SOPS and age for secure environment variable encryption
- **Preview environments** deployed from git commits for testing branches before production
- **High availability and load balancing** support for scaling applications

## Quick Start Guide
1. Install Sidekick via Homebrew: `brew install sidekick`
2. Provision a VPS with Ubuntu LTS and ensure SSH key access
3. Initialize your VPS: `sidekick init` (enter IP address and email for SSL)
4. Navigate to your application directory with a valid Dockerfile
5. Launch your app: `sidekick launch` (provide app name, port, and optional domain)
6. Deploy updates anytime with: `sidekick deploy`

## Use Cases
- Hosting personal side projects on affordable VPS providers ($5-10/month)
- Self-hosting web applications without PaaS vendor lock-in
- Deploying containerized apps with automatic SSL and reverse proxy
- Creating preview/staging environments for feature branches
- Running multiple applications on a single VPS with proper isolation

## Technical Details
- **Pricing Model**: Free and open source (GPL-3.0 license)
- **Platform Support**: macOS (Homebrew), Linux; requires Ubuntu LTS on target VPS
- **Integration Options**: Works with any Dockerfile-based application; integrates with SOPS for secrets
- **Data Export**: Standard Docker and docker-compose configurations; portable to any system

## Resources
- [GitHub Repository](https://github.com/MightyMoud/sidekick)
- [Official Website](https://www.sidekickdeploy.com)
- [Documentation](https://www.sidekickdeploy.com/docs/)
- [GitHub Discussions](https://github.com/MightyMoud/sidekick/discussions)
- [Releases](https://github.com/MightyMoud/sidekick/releases)

## Notes & Considerations
Requires Homebrew installed on local machine for SOPS dependency management. Currently supports single VPS deployments with multi-VPS management planned for future releases. VPS must run Ubuntu LTS and have SSH key authentication configured. The tool creates a dedicated `sidekick` user on the VPS and disables root login as a security best practice. For complex multi-container applications, docker-compose support is on the roadmap but not yet implemented.
