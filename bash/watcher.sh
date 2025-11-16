#!/usr/bin/env bash
# Very simple folder watcher using a loop

WATCH_DIR="${1:-.}"
INTERVAL=5

echo "== Folder watcher =="
echo "Watching: $WATCH_DIR"
echo "Check interval: ${INTERVAL}s"
echo "Press Ctrl+C to exit."

PREV_SNAPSHOT=""

while true; do
  SNAPSHOT=$(ls -1 "$WATCH_DIR" 2>/dev/null | sort | sha256sum | awk '{print $1}')
  if [[ "$SNAPSHOT" != "$PREV_SNAPSHOT" && -n "$PREV_SNAPSHOT" ]]; then
    echo "[$(date)] Change detected in $WATCH_DIR"
  fi
  PREV_SNAPSHOT="$SNAPSHOT"
  sleep "$INTERVAL"
done

