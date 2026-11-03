# Task 2: Terraform EC2 Infrastructure Provisioning

## Project Overview
This project demonstrates Infrastructure as Code (IaC) using Terraform to provision an AWS EC2 instance and configure the required network access and Docker installation.

## Technologies Used
- Terraform
- AWS EC2
- AWS VPC
- AWS Security Groups
- Ubuntu 24.04
- Docker
- AWS CLI

## Infrastructure Created

- **EC2 Instance:** Ubuntu 24.04
- **Instance Type:** t3.micro
- **AWS Region:** ap-south-1 (Mumbai)
- **Security Group:** Task2-Terraform-SG

## Security Group Configuration

| Type | Port | Purpose |
|---|---:|---|
| SSH | 22 | Remote server access |
| HTTP | 80 | Web traffic |

SSH access is restricted to the configured public IP address.

## Automation Using Terraform

Terraform automates the following operations:

1. Identifies the default AWS VPC and subnet.
2. Retrieves the latest Ubuntu 24.04 AMI.
3. Creates an AWS security group.
4. Launches a new EC2 instance.
5. Uses EC2 user_data to install Docker.
6. Enables and starts the Docker service.
7. Displays infrastructure details through Terraform outputs.

## Project Files

- `main.tf` – AWS provider, security group, EC2 instance and user_data configuration.
- `variables.tf` – Input variables for AWS region, instance type, key pair and SSH access.
- `outputs.tf` – Displays EC2 instance ID, public IP, DNS and security group ID.
- `terraform.tfvars` – Contains environment-specific variable values.
- `.gitignore` – Prevents sensitive and generated files from being committed.

## Terraform Commands

```bash
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply
```

To remove the infrastructure after testing:

```bash
terraform destroy
```

## Verification

After provisioning, verify the EC2 instance in the AWS Console.

Connect to the instance using SSH and check Docker:

```bash
docker --version
sudo systemctl status docker
```

## Security Practices

- Restrict SSH access to your own public IP.
- Keep AWS credentials outside Terraform source files.
- Never upload private `.pem` keys.
- Do not commit Terraform state files or sensitive variable files.

## Expected Outcome

An AWS EC2 Ubuntu instance provisioned through Terraform, with SSH and HTTP access configured and Docker installation automated through user_data.