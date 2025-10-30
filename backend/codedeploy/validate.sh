#!/bin/bash

HEALTH_URL="http://app-alb-270296790.us-east-1.elb.amazonaws.com/health"

echo "Running health check on $HEALTH_URL"

STATUS=$(curl -s -o /dev/null -w "%{http_code}" $HEALTH_URL)

if [ "$STATUS" -eq 200 ]; then
  echo "Health check passed ✅"
  exit 0
else
  echo "Health check failed ❌ (Status: $STATUS)"
  exit 1
fi
