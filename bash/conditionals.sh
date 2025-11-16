#!/usr/bin/env bash
# Simple condition checks: user, file, and service

FILE="/var/log/syslog"
SERVICE="ssh"

echo "== Bash conditionals demo =="

# Check current user
if [[ "$USER" == "root" ]]; then
  echo "You are root (admin)."
else
  echo "You are a standard user: $USER"
fi

# Check if file exists
if [[ -f "$FILE" ]]; then
  echo "File exists: $FILE"
else
  echo "File does not exist: $FILE"
fi

# Check if a service is listening on port 22 (Linux)
if ss -tulpn 2>/dev/null | grep -q ":22"; then
  echo "Looks like $SERVICE (or something on port 22) is running."
else
  echo "Port 22 does not appear to be listening."
fi

