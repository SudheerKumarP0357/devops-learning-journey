#!/bin/bash

# SonarQube LTS Community Version Installation Script

# Update and install prerequisites
echo "Updating system and installing prerequisites..."
sudo apt-get update -y
sudo apt-get install -y openjdk-11-jdk wget unzip

# Install Docker
echo "Installing Docker..."
sudo apt-get remove -y docker docker-engine docker.io containerd runc
sudo apt-get update -y
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Start Docker service
echo "Starting Docker service..."
sudo systemctl start docker
sudo systemctl enable docker

# Pull and run SonarQube LTS Community Edition Docker image
echo "Pulling and running SonarQube LTS Community Edition Docker image..."
sudo docker pull sonarqube:lts-community
sudo docker run -d --name sonarqube -p 9000:9000 sonarqube:lts-community

# Post installation steps
echo "SonarQube is being installed and will be available shortly..."
echo "You can access SonarQube at http://localhost:9000"
echo "Default login credentials are admin/admin"

# Wait for SonarQube to be fully up and running
echo "Waiting for SonarQube to start..."
until curl -s http://localhost:9000 > /dev/null; do
    sleep 5
done

echo "SonarQube is up and running!"