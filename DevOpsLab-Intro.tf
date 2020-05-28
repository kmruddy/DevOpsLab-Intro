provider "azurerm" {
    features {}

    subscription_id = var.subscription_id
    client_id = var.client_id
    client_secret = var.client_secret
    tenant_id = var.tenant_id
}

resource "azurerm_resource_group" "rg" {
    name     = "DevOpsLab_Ruddy"
    location = "westus"
}

resource "azurerm_managed_disk" "catdisk" {
  name                 = "DevOpsLab_MD"
  location             = "westus"
  resource_group_name  = "DevOpsLab_Ruddy"
  storage_account_type = "Premium_LRS"
  create_option        = "Empty"
  disk_size_gb         = "512"
}