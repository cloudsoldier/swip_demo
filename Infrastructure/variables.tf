variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "location" {
  description = "The Azure region where resources will be created"
  type        = string
}

variable "tags" {
  description = "Tags for the Resource Group"
  type        = map(string)
  default = {
    Service     = "Social Work Induction Programme (SWIP)"
    Product     = "Social Work Induction Programme (SWIP)"
    Portfolio   = "Children and Families"
    Environment = "Dev"
  }
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account"
  type        = string
}



variable "account_tier" {
  description = "The performance tier for the storage account"
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type for the storage account"
  type        = string
  default     = "LRS"
}
