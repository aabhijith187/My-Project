#!/bin/bash

# Step 1: Build the Docker image
docker build -t flask-hello-world .

# Step 2: Run the Docker container
docker run -d -p 5000:5000 --name flask-hello-world-container flask-hello-world

# Step 3: Print the container status
docker ps -f name=flask-hello-world-container