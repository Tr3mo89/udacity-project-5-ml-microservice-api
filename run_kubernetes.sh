#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath="tr3mo89/udacity-project-5"

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl run flask --image="tr3mo89/udacity-project-5" --port=8000
kubectl run flask --image=$dockerpath --port=8000

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
#kubectl expose pod flask --port=8000 --type="NodePort" --target-port=80
kubectl port-forward flask 8000:80
