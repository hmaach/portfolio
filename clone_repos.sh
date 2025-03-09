#!/bin/bash

BASE_URL="https://github.com/hmaach/"

repos=(
    "forum"
    "ascii-art-web"
)

# Clone or update each repo
for repo in "${repos[@]}"; do
    folder=$(basename "$repo" .git)
    if [ -d "./projects/$folder" ]; then
        echo "Updating $folder..."
        cd "./projects/$folder" && git pull origin main && cd ../../
    else
        echo "Cloning $repo..."
        git clone "${BASE_URL}${repo}.git" "./projects/$folder"
    fi
done
