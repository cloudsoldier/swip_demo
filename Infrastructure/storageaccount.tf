
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
  tags     = var.tags
}

resource "azurerm_storage_account" "mystorage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  depends_on               = [azurerm_resource_group.example] # Ensure RG is created first

  tags = {
    Service     = "Social Work Induction Programme (SWIP)"
    Product     = "Social Work Induction Programme (SWIP)"
    Portfolio   = "Children and Families"
    Environment = "Dev"
  }
}











