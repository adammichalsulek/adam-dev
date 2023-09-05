#!/bin/bash

# Define variables
APP_NAME="adam-web-app"
GIT_REPO="https://github.com/yourusername/your-repo.git"
DOCKER_IMAGE_NAME="my-web-app-image"
DOCKER_CONTAINER_NAME="my-web-app-container"

# Pull the latest code from the Git repository
echo "Pulling the latest code from the Git repository..."
git clone $GIT_REPO /var/www/$APP_NAME

# Build a Docker image from the application code
echo "Building Docker image..."
docker build -t $DOCKER_IMAGE_NAME /var/www/$APP_NAME

# Stop and remove the existing Docker container (if any)
echo "Stopping and removing existing container..."
docker stop $DOCKER_CONTAINER_NAME
docker rm $DOCKER_CONTAINER_NAME

# Run a new Docker container with the updated image
echo "Starting a new container..."
docker run -d -p 80:80 --name $DOCKER_CONTAINER_NAME $DOCKER_IMAGE_NAME

echo "Deployment completed.