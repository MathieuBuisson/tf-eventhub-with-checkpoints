output "namespace_name" {
  value = "${azurerm_eventhub_namespace.ns.name}"
}

output "eventhub_name" {
  value = "${azurerm_eventhub.hub.name}"
}

output "producer_connection_string" {
  value = "${azurerm_eventhub_authorization_rule.producer.primary_connection_string}"
}

output "consumer_connection_string" {
  value = "${azurerm_eventhub_authorization_rule.consumer.primary_connection_string}"
}
