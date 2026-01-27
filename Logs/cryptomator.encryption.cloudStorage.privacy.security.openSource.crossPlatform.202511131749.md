---
title: Tool Note - Cryptomator
vendor: Skymatic GmbH
date: 202511131749
categories: [encryption, cloudStorage, privacy, security, openSource, crossPlatform]
pricing: freemium
platforms: [windows, mac, linux, ios, android]
source: https://cryptomator.org/
documentation: https://docs.cryptomator.org/
type: tool
---

# Cryptomator - Client-Side Encryption for Cloud Storage

## Overview
Cryptomator is an open-source encryption tool that provides transparent, client-side encryption for files stored in cloud services. It creates secure "vaults" that encrypt both file contents and filenames using AES-256 encryption before uploading to any cloud provider, ensuring that only you control access to your data. Designed for simplicity and security, Cryptomator works seamlessly with Dropbox, Google Drive, OneDrive, and any cloud service that syncs to a local folder.

## Core Features
- **AES-256 Encryption**: Military-grade encryption with 256-bit key length for both files and filenames
- **Transparent Encryption**: Files are encrypted/decrypted on-the-fly through a virtual drive, no manual steps required
- **Zero-Knowledge Architecture**: Your password never leaves your device; even Cryptomator developers cannot access your data
- **Cloud-Agnostic**: Works with any cloud storage provider that syncs to a local folder (Dropbox, Google Drive, OneDrive, pCloud, Nextcloud, etc.)
- **Multiple Vaults**: Create unlimited password-protected vaults, each with individual encryption
- **Cross-Platform**: Available on Windows, macOS, Linux, iOS, and Android with vault compatibility across all platforms
- **Open Source**: GPL-3.0 licensed desktop app with publicly auditable code, no backdoors
- **File-by-File Encryption**: Each file is encrypted individually, enabling efficient cloud sync of only changed files
- **Recovery Key Option**: Generate a recovery key for password recovery (optional but recommended)
- **Biometric Unlock**: Support for fingerprint/Face ID on mobile devices

## Quick Start Guide
1. **Download and Install**: Get Cryptomator from cryptomator.org for your desktop platform (Windows/Mac/Linux)
2. **Create a Vault**: Click "Add Vault" → "Create New Vault" → Choose a name and location (ideally in your cloud sync folder)
3. **Set Password**: Create a strong password for the vault (optionally generate a recovery key and store it safely)
4. **Unlock Vault**: Enter your password to unlock the vault - it will appear as a virtual drive (e.g., drive L:)
5. **Add Files**: Drag and drop files into the unlocked virtual drive; they're automatically encrypted and synced to your cloud
6. **Lock Vault**: Click "Lock" when finished to secure the vault and remove the virtual drive
7. **Mobile Setup**: Install mobile app from App Store/Play Store, add existing vault, and enter password to access on the go

## Use Cases
- Securing sensitive business documents and contracts in cloud storage
- GDPR-compliant team collaboration when combined with appropriate cloud DPA
- Protecting personal financial records, tax documents, and medical files
- Encrypting confidential client data for freelancers and consultants
- Safeguarding research data and intellectual property
- Backing up encrypted photos and videos to prevent unauthorized access
- Creating secure shared vaults for family members or small teams
- Protecting against cloud provider breaches or government data requests
- Encrypting files on external drives or network storage (not just cloud)

## Technical Details
- **Pricing Model**: 
  - Desktop (Windows, macOS, Linux): Completely free and open source
  - Android: One-time purchase ~$13.99 (Google Play) or ~$16 (direct APK/F-Droid)
  - iOS: Freemium model - free with read-only access, ~$8.99 for full version
  - Supporter Certificate: Optional "pay what you want" for dark mode on desktop and to support development
  - Cryptomator Hub: Team collaboration with zero-knowledge key management, starting at €8/seat/month

- **Platform Support**: 
  - Desktop: Windows 10/11, macOS 10.15+, Linux (Ubuntu, Fedora, Arch via AUR)
  - Mobile: iOS 14+, Android 8+
  - System Requirements: JDK 24 for building from source, minimal RAM/storage requirements

- **Integration Options**: 
  - Works with any cloud provider: Dropbox, Google Drive, OneDrive, iCloud Drive, pCloud, Box, MEGA, Nextcloud, ownCloud
  - WebDAV and S3-based cloud storage supported on mobile
  - Virtual drive integration via WebDAV (cross-platform)
  - Optional system keychain integration for password storage
  - Third-party sync apps compatible on Android

- **Data Export**: 
  - Files remain in standard encrypted format, portable across platforms
  - No vendor lock-in: encrypted vaults can be accessed with any Cryptomator installation
  - Recovery key enables password reset without data loss
  - Vault format documented publicly for long-term accessibility

## Resources
- [Official Website](https://cryptomator.org/)
- [Documentation](https://docs.cryptomator.org/)
- [Getting Started Guide](https://cryptomator.org/help/)
- [GitHub Repository](https://github.com/cryptomator/cryptomator)
- [Community Forum](https://community.cryptomator.org/)
- [Security Architecture](https://docs.cryptomator.org/en/latest/security/architecture/)
- [Independent Security Audit (Cure53)](https://cryptomator.org/audits/)
- [FAQ](https://cryptomator.org/faq/)
- [Android App - Google Play](https://play.google.com/store/apps/details?id=org.cryptomator)
- [iOS App - App Store](https://apps.apple.com/app/cryptomator/id953086535)
- [Cryptomator Hub (for Teams)](https://cryptomator.org/hub/)

## Notes & Considerations
**Strengths**: Cryptomator excels at its core mission of transparent cloud encryption with minimal user friction. The open-source nature allows independent security audits (Cure53 audit completed in 2017), and the zero-knowledge architecture ensures maximum privacy. File-by-file encryption enables efficient cloud sync, unlike container-based solutions. Desktop version is completely free with no limitations, making it accessible to everyone.

**Limitations**: Mobile apps require one-time purchase (Android) or in-app unlock (iOS). No direct cloud provider integration like some paid alternatives - you must use local sync folders. Metadata (file sizes, modification dates, number of files) remains unencrypted. Losing your password means permanent data loss unless you saved the recovery key. Performance depends on your disk speed more than encryption overhead.

**Best Practices**: Always generate and safely store the recovery key. Use strong, unique passwords for each vault. Don't include special characters in vault names to avoid sync issues. Back up your entire vault folder including the `masterkey.cryptomator` file. Test vault access on all devices before relying on it. Consider using a password manager to store vault passwords securely.

**Alternatives Comparison**: Unlike VeraCrypt or BitLocker (full disk/container encryption), Cryptomator is optimized for cloud storage with file-level encryption. Unlike Boxcryptor (now discontinued), Cryptomator is fully open source and free on desktop. For teams, consider Cryptomator Hub which adds zero-knowledge key management and user access controls.

**Security Note**: Cryptomator uses Scrypt for key derivation, AES-GCM for file content encryption, and SIV mode for filename encryption. Each vault has unique cryptographic keys. The software has been continuously improved based on security audits and community feedback. As of 2024, it remains actively maintained with regular updates.
