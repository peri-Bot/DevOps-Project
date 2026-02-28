#!/bin/bash

# 1. Check if a directory argument was provided
if [ -z "$1" ]; then
    echo "Usage: log-archive <log-directory>"
    exit 1
fi

LOG_DIR=$1

# 2. Check if the provided directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory '$LOG_DIR' does not exist."
    exit 1
fi

# 3. Create a directory to store archives if it doesn't exist
ARCHIVE_DIR="archived_logs"
mkdir -p "$ARCHIVE_DIR"

# 4. Generate timestamp and archive filename
# Format: YYYYMMDD_HHMMSS (matches example: 20240816_100648)
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"
ARCHIVE_PATH="${ARCHIVE_DIR}/${ARCHIVE_NAME}"

# 5. Compress the log directory
echo "Archiving logs from $LOG_DIR..."
tar -czf "$ARCHIVE_PATH" -C "$(dirname "$LOG_DIR")" "$(basename "$LOG_DIR")"

# 6. Log the archive event to a file
LOG_FILE="${ARCHIVE_DIR}/archive_log.txt"
echo "[$(date '+%Y-%m-%d %H:%M:%S')] Archived $LOG_DIR to $ARCHIVE_NAME" >> "$LOG_FILE"

echo "Success! Archive created at: $ARCHIVE_PATH"
echo "Log updated at: $LOG_FILE"
