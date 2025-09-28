#!/bin/bash
# Azure setup script for drink-order-app

# Variables - you'll need to customize these
RESOURCE_GROUP="drink-order-rg"
LOCATION="westeurope"  # Change to your preferred region
ACR_NAME="drinkorderacr$(date +%s)"  # Unique name with timestamp
AKS_NAME="drink-order-aks"

echo "Setting up Azure resources for drink-order-app..."

# Create resource group
echo "Creating resource group..."
az group create --name $RESOURCE_GROUP --location $LOCATION

# Create Azure Container Registry
echo "Creating Azure Container Registry..."
az acr create --resource-group $RESOURCE_GROUP --name $ACR_NAME --sku Basic --admin-enabled true

# Create AKS cluster
echo "Creating AKS cluster (this takes 5-10 minutes)..."
az aks create \
    --resource-group $RESOURCE_GROUP \
    --name $AKS_NAME \
    --node-count 2 \
    --node-vm-size Standard_B2s \
    --enable-addons ingress \
    --attach-acr $ACR_NAME \
    --generate-ssh-keys

echo "Setup complete!"
echo "ACR Name: $ACR_NAME"
echo "AKS Name: $AKS_NAME"
echo "Resource Group: $RESOURCE_GROUP"