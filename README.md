# 🐧 Linux Automation Toolkit

A modular, text-based interactive shell toolkit designed to streamline daily Linux system administration tasks. 

## 🚀 Features

This toolkit features a centralized, color-coded terminal GUI that executes 10 distinct system tools:

1. **System Information:** Displays OS, kernel, uptime, and architecture.
2. **Network Information:** Fetches local IP, public IP, and default gateway.
3. **System Diagnostics:** Reports RAM usage and top CPU-consuming processes.
4. **Create a New User:** Safely provisions a new user with a home directory.
5. **Delete an Existing User:** Safely removes a user (with safeguards against deleting root/admin).
6. **Active & Recent Logins:** Shows current users and last 5 login events.
7. **Disk & Partition Info:** Displays block devices and disk usage.
8. **Service Status Checker:** Quickly verifies if a systemctl service is running.
9. **Quick Folder Backup:** Compresses any target directory into a `.tar.gz` archive.
10. **View Toolkit Logs:** Reads the local `toolkit.log` file to audit past executions.

## 📁 Directory Structure

```text
linux_toolkit/
├── menu.sh          # Main terminal UI and entry point
├── toolkit.log      # Auto-generated execution log (git-ignored)
└── scripts/         # Directory containing the individual tool modules
    ├── backup.sh
    ├── delete.sh
    ├── disk.sh
    ├── exit.sh
    ├── login.sh
    ├── logs.sh
    ├── netinfo.sh
    ├── service.sh
    ├── sysdiag.sh
    ├── sysinfo.sh
    └── user.sh
