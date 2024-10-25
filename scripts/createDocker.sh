#!/bin/bash

# Path to your docker.json file
DOCKER_JSON_FILE="gatk-sv/inputs/values/dockers.json"

# Use jq to loop through all keys except 'name' and pull corresponding Docker images
images=$(jq -r 'to_entries[] | select(.key != "name") | "\(.value)"' "$DOCKER_JSON_FILE")

# Loop through each image and pull it
for image in $images; do
  echo "Pulling Docker image: $image"
  docker pull "$image"
  
done


#chmod +x pull_docker_images.sh
#./pull_docker_images.sh
