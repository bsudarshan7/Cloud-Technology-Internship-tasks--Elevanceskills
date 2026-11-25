# Task 4: Deploy Docker Container to AWS EC2 via SSH

## Overview
This project demonstrates deploying a containerized web application onto an AWS EC2 Ubuntu server by connecting over SSH, pulling a pre-built Docker image from Docker Hub (`bsudarshan7/ansible-cicd-demo`), and exposing the running container to public traffic on port `80` / `8080`.

## Technologies Used
* **AWS EC2 (Ubuntu)** — Cloud compute virtual server
* **AWS Security Groups** — Virtual firewall rules for SSH (`22`) and HTTP (`80` / `8080`)
* **SSH** — Secure remote terminal access using an RSA `.pem` key pair
* **Docker** — Container runtime engine on EC2
* **Docker Hub** — Cloud container registry hosting the pre-built image
* **Nginx** — Web server running inside the container

## Project Workflow
1. Provision an AWS EC2 Ubuntu instance and configure Security Group inbound rules for SSH (`22`) and web traffic (`80` / `8080`).
2. Establish a secure SSH connection to the EC2 instance using the private `.pem` key pair.
3. Install and enable the Docker engine on the Ubuntu server.
4. Pull the existing application image (`bsudarshan7/ansible-cicd-demo`) from Docker Hub.
5. Run the container in detached mode with restart policies and map the EC2 host port (`80` or `8080`) to internal container port `80`.
6. Verify live public access through a web browser using the EC2 Public IPv4 address.

## Application Details
* **Docker Hub Image:** `bsudarshan7/ansible-cicd-demo`
* **Container Name:** `ec2-docker-demo`
* **Host Port (EC2):** `80` (or `8080`)
* **Container Port (Nginx):** `80`

## Deployment Commands Used

```bash
# 1. Connect to the EC2 instance via SSH
ssh -i "your-key.pem" ubuntu@<EC2_PUBLIC_IP>

# 2. Update packages and install Docker
sudo apt update && sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER
newgrp docker

# 3. Pull the pre-built image from Docker Hub
docker pull bsudarshan7/ansible-cicd-demo

# 4. Run the container and expose it on port 80 (or use -p 8080:80 for port 8080)
docker run -d --name ec2-docker-demo --restart always -p 80:80 bsudarshan7/ansible-cicd-demo

# 5. Verify the running container
docker ps
