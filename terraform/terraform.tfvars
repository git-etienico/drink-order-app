# Customize these values for your deployment

resource_group_name = "RG_AKS"
location           = "Germany West Central"  # Changed region
environment        = "demo"

# ACR name must be globally unique - add your initials/numbers
acr_name = "drinkorderacr2024"  # Keep your unique name

aks_cluster_name = "drink-order-aks"
aks_dns_prefix   = "drink-order"

# Start small for cost optimization
node_count   = 2
node_vm_size = "Standard_B2s"