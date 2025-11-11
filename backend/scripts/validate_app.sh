#!/bin/bash
set -e

echo "=== Validating Application Health ==="

URL="http://127.0.0.1/health"

# Try 6 times with 5-second intervals
for i in {1..6}; do
  echo "Checking $URL (Attempt $i)..."
  if curl -fs --max-time 5 "$URL" >/dev/null 2>&1; then
    echo "✅ Application is healthy at $URL"
    exit 0
  fi
  echo "Attempt $i failed. Retrying in 5s..."
  sleep 5
done

echo "❌ Application failed health checks after multiple attempts."
exit 1
