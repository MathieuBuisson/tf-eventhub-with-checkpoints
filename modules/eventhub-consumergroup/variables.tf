variable "consumer_group_names" {
  description = "List of consumer groups to deploy"
  type        = list(string)
}

variable "resource_group_name" {
  description = "Name of the resource group where the consumer group will be deployed"
  type        = string
}

variable "namespace_name" {
  description = "Name of the Event Hubs namespace where the consumer group belongs"
  type        = string
}

variable "eventhub_name" {
  description = "Name of Event Hub where the consumer group belongs"
  type        = string
}

