#!/usr/bin/env bash
# Loop through log files and count lines

LOG_DIR="/var/log"
echo "== Bash loops demo =="

# For loop over .log files
for f in "$LOG_DIR"/*.log; do
  [[ -e "$f" ]] || continue
  LINE_COUNT=$(wc -l < "$f")
  echo "$(basename "$f"): $LINE_COUNT lines"
done

echo
echo "Now running a simple while loop counter:"
i=1
while [[ $i -le 5 ]]; do
  echo "Iteration $i"
  ((i++))
done

