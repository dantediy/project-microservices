#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="dantediy"

# Step 2
# Run the Docker Hub container with kubernetes
k run project-microservices\
    --image=$dockerpath/project-microservices\
    --labels app=python-microservices

sleep 20;

# Step 3:
# List kubernetes pods
k get pods
# Step 4:
# Forward the container port to a host

k port-forward project-microservices --address 0.0.0.0 8000:80