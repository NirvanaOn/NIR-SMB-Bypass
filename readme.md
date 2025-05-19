# Nirvana Backdoor Setup Script

## Overview

This project contains a PowerShell backdoor script designed to demonstrate how an attacker could create a hidden administrative user on a Windows machine with remote access capabilities.

### What it does:
- Checks for Administrator privileges before execution.
- Creates a new user named `NIR` with password `vana`.
- Adds this user to the Administrators group, granting full administrative privileges.
- Shares the entire `C:\` drive remotely with full permissions for the `NIR` user.
- Configures the Windows Firewall to allow SMB traffic on port 445.
- Applies registry modifications to bypass remote access restrictions.

## How a Hacker Might Use This

Attackers aiming for persistent and stealthy access might use similar scripts to create hidden administrator accounts on compromised machines. By sharing the drive and allowing SMB connections, the attacker gains remote access to files and system controls. Firewall and registry tweaks help avoid detection and blocking by the system.

This backdoor method demonstrates why system administrators should regularly audit user accounts, shares, firewall rules, and registry settings for suspicious changes.

## Making It More Powerful and Stealthy

This script is a basic proof-of-concept. In real-world scenarios, attackers often enhance such backdoors by:

- Hiding user accounts from login screens and user lists.
- Using random or hard-to-detect usernames.
- Obfuscating scripts and commands to evade antivirus and detection tools.
- Disabling or manipulating security logs to cover tracks.
- Creating scheduled tasks or services to maintain persistence.
- Encrypting communications and using covert channels for remote control.
- Limiting firewall rules to specific IP addresses to reduce exposure.

**Note:** These techniques increase the risk and impact of attacks. Understanding them helps defenders better detect and prevent malicious activity.

## Ethical Use & Disclaimer

- **For Educational and Testing Purposes Only:**  
  This script is intended solely for use in controlled environments, such as penetration testing labs or authorized security assessments.

- **Do NOT use this script on any system without explicit permission.** Unauthorized access is illegal and unethical.

- Use responsibly to learn about Windows security, system hardening, and detection of malicious activity.

## About This Project

This script was developed with the assistance of an advanced AI tool, helping to automate and streamline the coding process. The AI remains unnamed to focus attention on responsible usage and ethical learning.

## Usage Instructions

1. Run PowerShell as Administrator.
2. Execute the batch file `run_backdoor.bat` or run the PowerShell script directly with elevated privileges.
3. The script will create the backdoor user and configure system settings automatically.
4. To remove this backdoor, manually delete the user, shares, firewall rules, and revert registry changes.

---

## Important Notes

- Always test in isolated virtual machines or lab environments.
- Monitor and log all changes made by scripts like this.
- Share knowledge responsibly to improve cybersecurity defenses.

---

**Stay ethical. Stay safe. Stay curious.**
