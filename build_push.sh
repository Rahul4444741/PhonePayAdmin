#!/bin/bash

# Set variables
export DOCKER_USERNAME="dhavalpatel262"
export VERSION=$(date +%Y%m%d%H%M%S)  # Use current timestamp as version

# Build images
docker-compose build

# Tag images with 'latest' tag
docker tag ${DOCKER_USERNAME}/medibuddy-admin-app:${VERSION} ${DOCKER_USERNAME}/medibuddy-admin-app:latest

# Push images
docker-compose push

# Push 'latest' tags
docker push ${DOCKER_USERNAME}/medibuddy-admin-app:latest

echo "Images built and pushed with version: $VERSION and latest tags"

# Wait for user input before exiting
read -p "Press any key to exit..."