# Variables for Azure resources

variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "RG_AKS"
}

variable "location" {
  description = "Azure region for resources"
  type        = string
  default     = "Germany West Central"
}

variable "environment" {
  description = "Environment name"
  type        = string
  default     = "demo"
}

variable "acr_name" {
  description = "Name for Azure Container Registry (must be globally unique)"
  type        = string
  default     = "drinkorderacr"
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "drink-order-aks"
}

variable "aks_dns_prefix" {
  description = "DNS prefix for AKS cluster"
  type        = string
  default     = "drink-order"
}

variable "node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 2
}

variable "node_vm_size" {
  description = "VM size for AKS nodes"
  type        = string
  default     = "Standard_B2s"
}