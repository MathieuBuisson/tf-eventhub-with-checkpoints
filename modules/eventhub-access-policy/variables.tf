variable "resource_group_name" {
  description = "Name of the resource group where the Event Hubs namespace will be deployed"
  type        = "string"
}

variable "namespace_name" {
  description = "Name of the Event Hubs namespace"
  type        = "string"
}

variable "eventhub_name" {
  description = "Name of Event Hub"
  type        = "string"
}

variable "access_policy_name" {
  description = "Name of this access policy"
  type        = "string"
  default     = ""
}

variable "access_type" {
  description = "Type or purpose of this access policy. Allowed values are : 'consumer' or 'producer'."
  type        = "string"
}
