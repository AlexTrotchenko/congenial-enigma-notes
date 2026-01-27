---
title: Tool Note - LocalStack
vendor: LocalStack
date: 202601211037
categories: [awsEmulator, devOps, cloudDevelopment, testing, serverless, docker]
pricing: freemium
platforms: [windows, mac, linux]
source: https://localstack.cloud
documentation: https://docs.localstack.cloud
type: tool
---

# LocalStack - Local AWS Cloud Stack for Offline Development & Testing

## Overview
LocalStack is a cloud service emulator that runs AWS services entirely on your local machine in a single Docker container. It enables developers to develop, test, and debug cloud and serverless applications offline without connecting to AWS, significantly reducing development costs and iteration time. With support for 110+ AWS services in the Ultimate tier, LocalStack is ideal for teams building production-ready cloud applications who need fast, reliable local testing environments.

## Core Features
- Full AWS cloud stack emulation running locally in Docker with 30-110+ services depending on tier
- Support for core AWS services including Lambda, S3, DynamoDB, SQS, SNS, API Gateway, and many more
- LocalStack CLI for easy container management and service status monitoring
- Cloud Pods for persistent state storage and sharing across teams
- Ephemeral Instances for cloud-based sandbox environments and previews
- IAM Policy Enforcement for testing security configurations locally
- CI/CD integration with credits-based usage for automated testing pipelines
- Stack Insights for visibility into local AWS service interactions
- AWS Replicator for syncing resources between LocalStack and real AWS

## Quick Start Guide
1. Install Docker on your machine (required dependency)
2. Install LocalStack CLI via Homebrew: `brew install localstack/tap/localstack-cli`
   - Or via pip: `python3 -m pip install localstack`
   - Or download binary from GitHub releases
3. Start LocalStack in detached mode: `localstack start -d`
4. Check service status: `localstack status services`
5. Install awslocal CLI wrapper: `pip install awscli-local`
6. Create your first resource: `awslocal sqs create-queue --queue-name test-queue`
7. Use standard AWS SDKs/tools by pointing endpoint to `http://localhost:4566`

## Use Cases
- Local development and testing of serverless Lambda functions
- Testing CloudFormation and Terraform infrastructure-as-code deployments
- CI/CD pipeline integration for automated AWS service testing
- Debugging complex multi-service AWS architectures offline
- Cost reduction by eliminating AWS charges during development
- Onboarding and training new developers on AWS services
- Chaos engineering and fault injection testing (Ultimate tier)

## Technical Details
- **Pricing Model**: Free tier (30+ services, basic support), Base $39/license/month (55+ services, 300 CI credits), Ultimate $89/license/month (110+ services, 1000 CI credits, advanced features), Enterprise custom pricing
- **Platform Support**: macOS, Linux, Windows (all via Docker); CLI available via Homebrew, pip, or binary download
- **Integration Options**: AWS CLI, Terraform, CDK, Pulumi, SAM, Serverless Framework, Docker Compose, Kubernetes (Helm), all AWS SDKs
- **Data Export**: Cloud Pods for state persistence and portability, local file system state persistence

## Resources
- [Official Website](https://localstack.cloud)
- [Documentation](https://docs.localstack.cloud)
- [Getting Started Guide](https://docs.localstack.cloud/getting-started/installation/)
- [Feature Coverage](https://docs.localstack.cloud/references/coverage/)
- [GitHub Repository](https://github.com/localstack/localstack)
- [Slack Community](https://localstack.cloud/slack/)
- [AWS Marketplace](https://aws.amazon.com/marketplace/seller-profile?id=d23d1bcc-cfe5-4301-893b-8f30025074e4)

## Notes & Considerations
LocalStack requires Docker to be installed and running on your machine. The free Community tier is open source and suitable for basic experimentation, while production testing typically requires paid tiers for full service coverage. CI credits are shared across workspace licenses and replenish monthly. State is ephemeral by default and resets when the container restarts unless persistence is enabled. Some advanced AWS features may have partial implementation; check the feature coverage documentation for specific service parity details. Enterprise tier supports fully offline operation for air-gapped environments.
