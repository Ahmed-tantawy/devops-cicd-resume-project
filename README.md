![CI](https://github.com/Ahmed-tantawy/devops-cicd-resume-project/actions/workflows/deploy.yml/badge.svg)
![CI](https://img.shields.io/badge/CI-GitHub%20Actions-blue)
![Terraform](https://img.shields.io/badge/IaC-Terraform-purple)
![Docker](https://img.shields.io/badge/Container-Docker-blue)
![AWS](https://img.shields.io/badge/Cloud-AWS-orange)
![Ansible](https://img.shields.io/badge/Config-Ansible-red)
![Nginx](https://img.shields.io/badge/Web-Nginx-green)

# DevOps CI/CD Resume Project

Production-style DevOps project demonstrating a complete CI/CD pipeline using Terraform, Ansible, Docker, Nginx, AWS EC2 and GitHub Actions.

This project provisions infrastructure, configures the server, deploys a containerized website, and enables HTTPS automatically.

---

## Architecture
Developer → GitHub → GitHub Actions → Ansible → AWS EC2 → Docker → Nginx → HTTPS → Website


Infrastructure flow:

1. Terraform provisions AWS EC2
2. Ansible configures server
3. Docker runs nginx container
4. Website served from container
5. SSL enabled
6. GitHub Actions deploys automatically

---

## Tech Stack

- Terraform
- AWS EC2
- Ansible
- Docker
- Nginx
- GitHub Actions
- Linux
- OpenSSL
- Git

---

## Features

- Infrastructure as Code
- Automated provisioning
- Automated configuration
- Containerized deployment
- HTTPS support
- CI/CD pipeline
- Clean repo structure
- Production-style setup

---

## Repository Structure
ansible/
terraform/
docker/
website/
docs/
.github/workflows/


---

## CI/CD

Every push to main triggers:
GitHub Actions → Ansible → EC2 → Docker → Deploy


No manual deployment required.

---

## HTTPS

Self-signed SSL certificate generated automatically using Ansible and OpenSSL.

HTTPS enabled on port 443.

---

## Demo
http://EC2_PUBLIC_IP
https://EC2_PUBLIC_IP


---

## Author

Ahmed Abdelfattah  
DevOps Engineer  
AWS | Terraform | Ansible | Docker | CI/CD