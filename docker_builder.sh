#!/bin/bash

# Step 1: Stop and remove running containers
echo "Stopping and removing any running containers..."
docker-compose down

# Step 2: Remove all Docker images (optional, removes all images, including the ones not related to your project)
echo "Removing all Docker images..."
docker rmi $(docker images -q) --force

# Step 3: Build Docker images using docker-compose
echo "Building Docker images..."
docker-compose build

# Step 4: Start the containers in detached mode
echo "Starting containers..."
docker-compose up -d

# Step 5: List running containers to verify everything is up
echo "Running containers:"
docker ps
