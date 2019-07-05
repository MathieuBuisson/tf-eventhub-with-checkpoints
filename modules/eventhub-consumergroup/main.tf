resource "azurerm_eventhub_consumer_group" "cg" {
  count               = length(var.consumer_group_names)
  name                = var.consumer_group_names[count.index]
  resource_group_name = var.resource_group_name
  namespace_name      = var.namespace_name
  eventhub_name       = var.eventhub_name
}

