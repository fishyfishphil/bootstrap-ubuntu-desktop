#!/bin/bash

# Update the apt package index and install packages to allow apt to use a repository over HTTPS
apt-get update
apt-get install \
  ca-certificates \
  curl \
  gnupg \
  lsb-release -y

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the stable repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install the latest version of Docker Engine and containerd
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io -y

# Create docker group and add user
groupadd docker
usermod -aG docker ${USER}
su -s ${USER}

# Verify install
docker run hello-world

