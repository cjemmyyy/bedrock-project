# Project Bedrock - InnovateMart EKS Deployment

## 📋 Assignment Overview
**Company:** InnovateMart Inc.  
**Role:** Cloud DevOps Engineer  
**Project:** "Project Bedrock" - Deploy microservices application to production-grade Kubernetes on AWS EKS

## ✅ Core Requirements Delivered

### 1. Infrastructure as Code (IaC) ✅
- **Terraform** automates all AWS resource provisioning
- **VPC** with public and private subnets
- **EKS cluster** with managed node groups
- **IAM roles and policies** for EKS and node groups

### 2. Application Deployment ✅
- **Microservices application** deployed to EKS cluster
- **In-cluster dependencies** (databases, message brokers)
- **Production-ready** Kubernetes configuration

### 3. Developer Access ✅
- **IAM user:** `innovatemart-developer`
- **Read-only access** to EKS cluster resources
- **Secure credentials** management

### 4. CI/CD Automation ✅
- **GitHub Actions** pipeline automates deployments
- **Branching strategy** (main branch triggers auto-deploy)
- **Secure credential management** via GitHub Secrets

## 🏗️ Architecture

```
GitHub Repository → GitHub Actions → Terraform → AWS EKS → Microservices App
```

## 📁 Project Structure
```
project-bedrock/
├── infrastructure/          # Terraform code
├── applications/           # Kubernetes manifests
├── .github/workflows/      # CI/CD pipelines
└── documentation/          # This documentation
```

## 🚀 Quick Start

### Access the EKS Cluster (Admin)
```bash
# Configure kubectl
aws eks update-kubeconfig --region us-east-1 --name innovatemart-eks

# Verify cluster access
kubectl get nodes
kubectl get pods --all-namespaces
```

### Developer Access
```bash
# Use developer IAM credentials
aws configure --profile developer

# Access cluster (read-only)
aws eks describe-cluster --name innovatemart-eks --region us-east-1 --profile developer
```

### CI/CD Pipeline
- **Pushes to main branch** automatically trigger `terraform apply`
- **Pull requests** run `terraform plan` for review
- **Credentials secured** via GitHub Secrets

## 🔧 Technical Details

### Terraform Modules
- **VPC Module:** Multi-AZ with NAT gateways
- **EKS Module:** Managed control plane + worker nodes
- **IAM Module:** Least-privilege permissions

### Kubernetes Resources
- **Namespaces:** Application isolation
- **Deployments:** Microservice pods
- **Services:** Internal and external access
- **ConfigMaps/Secrets:** Configuration management

### Security Features
- **Private subnets** for worker nodes
- **IAM roles** for service accounts
- **Read-only access** for developers
- **No hardcoded credentials**

## 📊 Verification Checklist

- [x] EKS cluster status: **ACTIVE**
- [x] Worker nodes: **Ready**
- [x] Microservices: **Running**
- [x] IAM user: **Created with read-only access**
- [x] CI/CD pipeline: **Successful runs**
- [x] Terraform: **Plan/Apply working**

## 🛠️ Troubleshooting

### Common Issues
1. **Cluster access denied:** Verify IAM user has EKS read permissions
2. **Terraform fails:** Check GitHub Secrets for correct AWS credentials
3. **Pods not starting:** Check container image availability

### Useful Commands
```bash
# Cluster info
kubectl cluster-info

# Resource status
kubectl get all --all-namespaces

# Pod logs
kubectl logs -f deployment/[deployment-name]

# Service URLs
kubectl get services
```

## 🔒 Security Notes

- **Admin credentials** stored in GitHub Secrets
- **Developer access** is read-only
- **Regular rotation** of access keys recommended
- **Audit logging** enabled for EKS cluster
