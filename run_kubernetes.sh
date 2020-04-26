#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
repodomain=docker.io
dockerrepo=michalkrasucki
imagetag=api
dockerpath=$dockerrepo/$imagetag

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deployment $imagetag --image=$repodomain/$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/$imagetag 8000:80
