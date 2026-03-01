## Architecture
Developer → GitHub → GitHub Actions → Ansible → AWS EC2 → Docker → Nginx → Website

This project demonstrates a full CI/CD DevOps pipeline:

- Terraform provisions AWS EC2
- Ansible configures server
- Docker runs nginx container
- GitHub Actions deploys automatically
- Website served from container
