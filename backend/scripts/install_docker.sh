#!/bin/bash
set -e

sudo -u ubuntu bash 

echo "=== Installing Docker and Docker Compose ==="

# Install Docker if not present
if ! command -v docker &> /dev/null
then
  sudo apt update -y
  sudo apt install docker.io -y
  sudo usermod -aG docker $USER
  sudo newgrp docker
  sudo -u ubuntu bash 
  sudo systemctl start docker
  sudo systemctl enable docker
else
  echo "Docker already installed"
fi

# Install Docker Compose if not present
if ! command -v docker-compose &> /dev/null
then
  echo "Installing Docker Compose..."
  sudo apt install docker-compose -y
else
  echo "Docker Compose already installed"
fi

