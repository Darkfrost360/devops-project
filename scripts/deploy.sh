#!/bin/bash

set -e

echo "=============================="
echo " Starting deployment"
echo "=============================="

cd ~/devops-project

echo "1. Pulling latest code..."
git pull origin main

echo "2. Building containers..."
docker compose build

echo "3. Starting containers..."
docker compose up -d

echo "4. Container status:"
docker compose ps

echo "5. Checking application..."
sleep 3

curl --fail http://localhost/health

echo ""
echo "=============================="
echo " Deployment successful!"
echo "=============================="
