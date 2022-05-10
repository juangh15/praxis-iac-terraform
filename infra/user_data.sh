#!/bin/bash
sudo apt update
## Install docker
sudo apt install docker.io -y

#configure docker users
sudo groupadd docker
sudo usermod -aG docker ubuntu
sudo newgrp docker

## Run pacman
docker run -p -d nginxdemos/hello