output "namespace_name" {
  value = azurerm_eventhub_namespace.ns.name
}

output "eventhub_name" {
  value = azurerm_eventhub.hub.name
}

