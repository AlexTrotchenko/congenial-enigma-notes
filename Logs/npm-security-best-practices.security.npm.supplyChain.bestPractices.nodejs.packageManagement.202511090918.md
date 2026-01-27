---
title: Tool Note - npm Security Best Practices
vendor: Liran Tal
date: 202511090918
categories: [security, npm, supplyChain, bestPractices, nodejs, packageManagement]
pricing: free
platforms: [windows, mac, linux]
source: https://github.com/lirantal/npm-security-best-practices
documentation: https://github.com/lirantal/npm-security-best-practices
type: tool
---

# npm Security Best Practices - Supply Chain Attack Mitigation Guide

## Overview
A comprehensive, curated collection of security best practices for npm package management designed to protect against supply chain attacks, compromised packages, and malicious code execution. This guide covers safe-by-default command-line options, dependency hardening, secure local development practices, and maintainer security protocols applicable to npm, pnpm, and Bun package managers.

## Core Features
- **Post-Install Script Hardening** - Disable lifecycle scripts to prevent arbitrary code execution during package installation
- **Cooldown Period Implementation** - Delay installations of newly published packages to allow community vetting
- **Package Audit Tools** - Integration with npq for pre-installation security checks and health signals
- **Lockfile Security** - Validation and protection against lockfile injection attacks using lockfile-lint
- **Deterministic Installations** - Enforce strict lockfile adherence with npm ci and frozen lockfile modes
- **2FA and Provenance** - Authentication and build attestation requirements for package maintainers
- **Secrets Management** - Just-in-time secret injection using reference-based environment variables
- **Dev Container Isolation** - Sandboxed development environments to limit supply chain attack blast radius

## Quick Start Guide
1. **Disable post-install scripts globally**: `npm config set ignore-scripts true`
2. **Install npq for package auditing**: `npm install -g npq` and alias with `alias npm='npq-hero'`
3. **Install lockfile-lint as dev dependency**: `npm install --save-dev lockfile-lint`
4. **Add lockfile validation to package.json**: Add `"preinstall": "npm run lint:lockfile"` script
5. **Use npm ci in CI/CD pipelines**: Replace `npm install` with `npm ci --only=production`
6. **Enable 2FA for npm accounts**: Run `npm profile enable-2fa auth-and-writes`
7. **Configure pnpm cooldown**: Add `minimumReleaseAge: 20160` to `pnpm-workspace.yaml`
8. **Set up dev containers**: Create `.devcontainer/devcontainer.json` for isolated development

## Use Cases
- **Preventing Shai-Hulud & Nx-style attacks** - Mitigate post-install script exploitation and credential exfiltration
- **Supply chain security auditing** - Comprehensive pre-installation security checks for new packages
- **CI/CD pipeline hardening** - Deterministic builds with lockfile validation and frozen dependencies
- **Open source maintainer security** - Provenance attestations and OIDC-based trusted publishing
- **Enterprise development workflows** - Sandboxed environments with secrets management integration
- **Typosquatting protection** - Detection of malicious packages with similar names to popular libraries
- **Dependency confusion prevention** - Lockfile validation to ensure packages come from trusted registries
- **Zero-day vulnerability mitigation** - Cooldown periods to avoid newly compromised package versions

## Technical Details
- **Pricing Model**: Free and open source (Apache 2.0 License)
- **Platform Support**: Cross-platform (npm, pnpm, Bun, Deno) on Windows, macOS, Linux
- **Integration Options**: 
  - npq package auditor with Snyk vulnerability database
  - lockfile-lint for CI/CD validation
  - 1Password/Infisical secrets management CLIs
  - VS Code dev containers with remote development
  - GitHub Actions/GitLab CI for trusted publishing
- **Data Export**: Not applicable (configuration-based guide)

## Resources
- [Official Repository](https://github.com/lirantal/npm-security-best-practices)
- [npq Package Auditor](https://github.com/lirantal/npq)
- [lockfile-lint Tool](https://www.npmjs.com/package/lockfile-lint)
- [Snyk Automated Dependency PRs](https://docs.snyk.io/scan-with-snyk/pull-requests/snyk-pull-or-merge-requests/upgrade-dependencies-with-automatic-prs-upgrade-prs/upgrade-open-source-dependencies-with-automatic-prs)
- [Dev Containers Guide](https://www.nodejs-security.com/blog/mitigate-supply-chain-security-with-devcontainers-and-1password-for-nodejs-local-development)
- [Secrets Management Best Practices](https://www.nodejs-security.com/blog/do-not-use-secrets-in-environment-variables-and-here-is-how-to-do-it-better)
- [npm Trusted Publishing Docs](https://docs.npmjs.com/generating-provenance-statements)
- [1Password CLI Secrets Automation](https://developer.1password.com/docs/cli/get-started/)

## Notes & Considerations
This guide addresses real-world attacks including event-stream (2018), eslint-scope (2018), colors (2022), node-ipc (2022), Shai-Hulud (2024), and Nx (2024) incidents. Post-install scripts remain the most common attack vector for supply chain compromises. pnpm v10.0+ and Bun disable postinstall scripts by default, providing safer defaults than npm/yarn. Lockfile injection vulnerabilities affect npm and yarn but not pnpm due to architectural differences. Cooldown periods (21+ days recommended) significantly reduce exposure to compromised packages. Dev containers provide the strongest isolation but require Docker and VS Code/compatible IDE setup. Secrets stored in plaintext .env files are vulnerable to exfiltration even when not committed to version control. The guide includes specific commands for npm, pnpm, Bun, and Deno where applicable.
