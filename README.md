# GCP_Exercise

# Secure Micro-Service Deployment in GKE

## Prerequisites
- Google Cloud account
- Terraform CLI
- Helm CLI
- Kubernetes CLI (`kubectl`)
- Python installed

## Steps to Deploy
1. **Set Up Infrastructure**  
   Run the following:
   ```sh
   terraform init
   terraform apply -auto-approve


## Deploy microservice using helm
    Run the following:
    helm install microservice ./helm-chart

## Configure ingress and DNS
    Run the following:
    kubectl apply -f ingress.yaml

## Setup Firewall 
    Run the following:
    python firewall.py

## Enable Monitoring
    Run the following:
    kubectl apply -f stackdriver-monitoring.yaml



