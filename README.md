# Deploying an Amazon EKS Cluster Using Terraform

This repository contains Terraform code to provision an **Amazon EKS (Elastic Kubernetes Service) cluster** on AWS using **Infrastructure as Code (IaC)** best practices.

The setup is modular, reusable, and suitable for learning, development, and extending toward production use cases.

---

## 📌 Features

- Custom **VPC** with public and private subnets
- Internet Gateway and NAT Gateway
- **Amazon EKS Cluster**
- Managed **EKS Node Groups**
- Clean **Terraform module structure**
- Centralized configuration using `locals`
- Reusable and environment-agnostic design

---

## 🏗 Architecture Overview

The infrastructure created by this project includes:

- A VPC spanning multiple Availability Zones
- Public subnets for load balancers
- Private subnets for worker nodes
- EKS control plane managed by AWS
- EC2 worker nodes managed via EKS Node Groups

---

refer to the following link to check how to create eks cluster using this repo 

https://medium.com/@antonyan009/deploying-an-eks-cluster-using-terraform-2ad5c8e7e06d