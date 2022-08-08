#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=achay/prediction_app

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run prediction-app-demo --image=$dockerpath:v1.0.0 --port=80 --labels app=prediction-app-demo


# Step 3:
# List kubernetes pods
kubectl get pods


# Step 4:
# Forward the container port to a host
kubectl port-forward prediction-app-demo 8000:80
