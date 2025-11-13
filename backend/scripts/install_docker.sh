#!/bin/bash
set -e

echo "=== Checking Docker and Docker Compose Installation ==="

# Check Docker
if command -v docker &> /dev/null
then
  echo "✅ Docker is installed: $(docker --version)"
else
  echo "❌ Docker is NOT installed. Exiting..."
  exit 1
fi

# Check Docker Compose
if command -v docker-compose &> /dev/null
then
  echo "✅ Docker Compose is installed: $(docker-compose -v)"
else
  echo "❌ Docker Compose is NOT installed. Exiting..."
  exit 1
fi

echo "✅ All required tools are installed."
