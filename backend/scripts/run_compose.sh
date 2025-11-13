#!/bin/bash
set -e
echo "=== Running docker-compose up -d ==="
cd /home/ubuntu/backend
sudo docker-compose up -d --build
