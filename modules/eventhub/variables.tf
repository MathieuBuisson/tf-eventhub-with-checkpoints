variable "namespace_name" {
  description = "Name of the Event Hubs namespace"
  type        = "string"
  default     = "eventhubs-ns"
}

variable "location" {
  description = "Azure region where the Event Hubs namespace will be located"
  type        = "string"
}

variable "resource_group_name" {
  description = "Name of the resource group where the Event Hubs namespace will be deployed"
  type        = "string"
}

variable "sku_tier" {
  description = "The messaging tier for service Bus namespace"
  type        = "string"
  default     = "Standard"
}

variable "sku_capacity" {
  description = "Event Hubs throughput units. Allowed values are from 0 to 20"
  default     = 1
}

variable "kafka_enabled" {
  description = "indicates whether the Kafka protocol is enabled for this eventhub namespace"
  default     = false
}

variable "environment" {
  description = "The type of environment this Event Hub is for"
  type        = "string"
  default     = "Dev"
}

variable "eventhub_name" {
  description = "Name of Event Hub"
  type        = "string"
  default     = "eventhub"
}

variable "hub_partition_count" {
  description = "Number of partitions created for the Event Hub. Allowed values are from 1 to 32 partitions"
  default     = 2
}

variable "message_retention_in_days" {
  description = "Number of days to retain the events for this Event Hub. Value should be from 1 to 7 days"
  default     = 1
}

variable "consumer_access_policy_name" {
  description = "Name of the shared access policy for consumers"
  default     = "RootManageSharedAccessKey"
}

variable "consumer_access_policy_rights" {
  description = "The set of permissions (in 'listen', 'manage', 'send') associated with the consumer access policy"
  type        = "list"
  default     = ["listen", "manage", "send"]
}

variable "producer_access_policy_name" {
  description = "Name of the shared access policy for producers"
  default     = "SenderAccessKey"
}

variable "producer_access_policy_rights" {
  description = "The set of permissions (in 'listen', 'manage', 'send') associated with the producer access policy"
  type        = "list"
  default     = ["send"]
}
