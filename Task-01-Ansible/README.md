# Task 1: Ansible Configuration Management

## Overview
This project demonstrates automated deployment of a containerized web application using Ansible and Docker on an AWS EC2 Ubuntu instance.

## Technologies Used
- AWS EC2 (Ubuntu)
- Ansible
- Docker
- Docker Hub
- Nginx
- HTML and CSS

## Project Workflow
1. Create a web application using HTML and CSS.
2. Build a Docker image using the Nginx base image.
3. Push the Docker image to Docker Hub.
4. Use an Ansible playbook to deploy the Docker container.
5. Access the application through a web browser.

## Application Details
- **Docker Hub image:** `bsudarshan7/ansible-cicd-demo`
- **Container name:** `ansible-demo-auto`
- **Application port:** `8080`
- **Container port:** `80`

## Project Files
- `Dockerfile` — Defines how the application image is built.
- `index.html` — Contains the web application interface.
- `inventory` — Defines the Ansible target configuration.
- `playbook.yml` — Automates the container deployment.
  
## Verification
The application was tested on the EC2 instance, and the website was accessible through its public IP address on port 8080.

**Note:** The dashboard's live status should be verified after deploying the latest image.# Task 1: Ansible Configuration Management

## Overview
This project demonstrates automated deployment of a containerized web application using Ansible and Docker on an AWS EC2 Ubuntu instance.

## Technologies Used
- AWS EC2 (Ubuntu)
- Ansible
- Docker
- Docker Hub
- Nginx
- HTML and CSS

## Project Workflow
1. Create a web application using HTML and CSS.
2. Build a Docker image using the Nginx base image.
3. Push the Docker image to Docker Hub.
4. Use an Ansible playbook to deploy the Docker container.
5. Access the application through a web browser.

## Application Details
- **Docker Hub image:** `bsudarshan7/ansible-cicd-demo`
- **Container name:** `ansible-demo-auto`
- **Application port:** `8080`
- **Container port:** `80`

## Project Files
- `Dockerfile` — Defines how the application image is built.
- `index.html` — Contains the web application interface.
- `inventory` — Defines the Ansible target configuration.
- `playbook.yml` — Automates the container deployment.
  
## Verification
The application was tested on the EC2 instance, and the website was accessible through its public IP address on port 8080.

**Note:** The dashboard's live status should be verified after deploying the latest image.
