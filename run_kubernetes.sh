#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="hymn208/udacity-project4:v1.0.0"
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-project4 \
        --image=hymn208/udacity-project4:v1.0.0 --port=80 \
        --labels app=udacity-project4

# Step 3:
# List kubernetes pods
kubectl get pod
# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-project4 8000:80
