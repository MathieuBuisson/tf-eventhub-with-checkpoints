variable "resource_group_name" {
  description = "Name of the resource group where the resources will be deployed"
  type        = "string"
}

variable "location" {
  description = "Azure region where resources will be located"
  type        = "string"
}

variable "namespace_name" {
  description = "Name of the Event Hubs namespace"
  type        = "string"
  default     = ""
}

variable "environment" {
  description = "The type of environment the deployment is for"
  type        = "string"
  default     = "Dev"
}

variable "eventhub_name" {
  description = "Name of Event Hub"
  type        = "string"
  default     = ""
}

variable "consumergroup_names" {
  description = "List of consumer groups to deploy"
  type        = "list"
  default     = ["analytics", "product"]
}

variable "storage_account_name" {
  description = "Name of the storage account"
  type        = "string"
}
