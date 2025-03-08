# Define resource group
resource "azurerm_resource_group" "rg" {
  name     = "${var.labelPrefix}-A09-RG"
  location = var.region
}

# Define the storage account
resource "azurerm_storage_account" "storage" {
  name                     = "${var.labelPrefix}A09StorageAccount"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}