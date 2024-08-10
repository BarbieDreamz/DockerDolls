#!/bin/bash

# Navigate to the project directory
cd /home/project/CC201/labs/1_ContainersAndDocker/

# Build the Docker image
docker build . -t myimage:v1

# List Docker images for verification
docker images

# Run the Docker container
docker run -dp 8080:8080 myimage:v1

# Test the application - I used a logical OR because...well...
curl localhost:8080 ||

sleep 10

curl http://localhost:8080
