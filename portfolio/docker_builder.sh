#!/bin/bash

docker stop portfolio-con || true
docker rm portfolio-con || true

docker system prune -f

docker rmi portfolio-img || true

docker build --no-cache -t portfolio-img .

docker run -d -p 3000:80 --name portfolio-con portfolio-img

docker ps
