resource "azurerm_eventhub_namespace" "ns" {
  name                = "${var.namespace_name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  sku                 = "${var.sku_tier}"
  capacity            = "${var.sku_capacity}"
  kafka_enabled       = "${var.kafka_enabled}"

  tags = {
    environment = "${var.environment}"
  }
}

resource "azurerm_eventhub" "hub" {
  name                = "${var.eventhub_name}"
  namespace_name      = "${azurerm_eventhub_namespace.ns.name}"
  resource_group_name = "${var.resource_group_name}"
  partition_count     = "${var.hub_partition_count}"
  message_retention   = "${var.message_retention_in_days}"
}

resource "azurerm_eventhub_authorization_rule" "consumer" {
  name                = "${var.consumer_access_policy_name}"
  namespace_name      = "${azurerm_eventhub_namespace.ns.name}"
  eventhub_name       = "${azurerm_eventhub.hub.name}"
  resource_group_name = "${var.resource_group_name}"
  listen              = "${contains(var.consumer_access_policy_rights, "listen") ? true : false}"
  manage              = "${contains(var.consumer_access_policy_rights, "manage") ? true : false}"
  send                = "${contains(var.consumer_access_policy_rights, "send") ? true : false}"
}

resource "azurerm_eventhub_authorization_rule" "producer" {
  name                = "${var.producer_access_policy_name}"
  namespace_name      = "${azurerm_eventhub_namespace.ns.name}"
  eventhub_name       = "${azurerm_eventhub.hub.name}"
  resource_group_name = "${var.resource_group_name}"
  listen              = "${contains(var.producer_access_policy_rights, "listen") ? true : false}"
  manage              = "${contains(var.producer_access_policy_rights, "manage") ? true : false}"
  send                = "${contains(var.producer_access_policy_rights, "send") ? true : false}"
}
