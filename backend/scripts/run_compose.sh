#!/bin/bash
set -e
echo "=== Running docker-compose up -d ==="
cd /home/ubuntu/backend
docker build -t fullstack-project .
docker tag fullstack-project:latest 533267349233.dkr.ecr.us-east-1.amazonaws.com/fullstack-project:latest
docker push 533267349233.dkr.ecr.us-east-1.amazonaws.com/fullstack-project:latest
sudo docker-compose up -d --build
