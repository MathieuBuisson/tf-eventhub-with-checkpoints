variable "name" {
  description = "Name of the storage account"
}

variable "resource_group_name" {
  description = "Name of the resource group where the storage account will be deployed"
  type        = "string"
}

variable "location" {
  description = "Azure region where the storage account will be located"
  type        = "string"
}

variable "storage_account_tier" {
  description = "Tier to use for this storage account. Valid values are : 'Standard' and 'Premium'."
  default     = "Standard"
}

variable "storage_replication_type" {
  description = "Type of replication to use for this storage account. Valid values are : 'LRS', 'GRS', 'RAGRS' and 'ZRS'."
  default     = "LRS"
}

variable "storage_account_kind" {
  description = "Kind of storage account. Valid values are : 'Storage', 'StorageV2' and 'BlobStorage'."
  default     = "StorageV2"
}

variable "blob_encryption" {
  description = "Whether Encryption Services should be enabled for Blob storage"
  default     = true
}

variable "file_encryption" {
  description = "Whether Encryption Services should be enabled for file storage"
  default     = true
}

variable "encryption_key_source" {
  description = "Encryption key source for the storage account. Valid values are : 'Microsoft.Keyvault' and 'Microsoft.Storage'."
  default     = "Microsoft.Storage"
}

variable "https_only" {
  description = "Whether this storage account accepts only HTTPS requests"
  default     = true
}

variable "environment" {
  description = "The type of environment this storage is for"
  type        = "string"
}

variable "blob_containers" {
  description = "List of blob storage containers to create within the storage account"
  type        = "list"
}

variable "container_access_type" {
  description = "Type of access the container provides. Can be either : 'blob', 'container', or 'private'"
  default     = "private"
}
