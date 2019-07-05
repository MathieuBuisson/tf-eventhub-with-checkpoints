locals {
  default_namespace_name = "eventhub-${lower(var.environment)}-ns"
  namespace_name         = var.namespace_name != "" ? var.namespace_name : local.default_namespace_name
  default_eventhub_name  = "eventhub-${lower(var.environment)}-hub"
  eventhub_name          = var.eventhub_name != "" ? var.eventhub_name : local.default_eventhub_name
}

resource "azurerm_eventhub_namespace" "ns" {
  name                = local.namespace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.sku_tier
  capacity            = var.sku_capacity
  kafka_enabled       = var.kafka_enabled

  tags = {
    environment = var.environment
  }
}

resource "azurerm_eventhub" "hub" {
  name                = local.eventhub_name
  namespace_name      = azurerm_eventhub_namespace.ns.name
  resource_group_name = var.resource_group_name
  partition_count     = var.hub_partition_count
  message_retention   = var.message_retention_in_days
}

