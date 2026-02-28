# Log Archive Tool 📦

This is my solution for the **Log Archive Tool** project from roadmap.sh.

Project URL: https://roadmap.sh/projects/log-archive-tool

## Description
A Bash-based CLI tool that automates the archiving of log files. It compresses logs into a timestamped `.tar.gz` archive and maintains a history of all archive operations in a log file.

## Features
- Accepts a directory path as a command-line argument.
- Compresses logs into `logs_archive_YYYYMMDD_HHMMSS.tar.gz`.
- Stores archives in a dedicated `archived_logs` directory.
- Logs every archive event with a date and time.

## How to Run
1. **Clone the repository:**
   ```bash
   git clone https://github.com/YOUR_USERNAME/devops-roadmap-projects.git
   cd devops-roadmap-projects/log-archive-tool
   ```
2. **Make the script executable:**
   ```bash
    chmod +x log-archive.sh
    ```
3. **Run the tool:**
    Provide the directory you want to archive (e.g., /var/log):
   ```bash
    ./log-archive.sh /var/log
   ```
