output "connection_string" {
  value = azurerm_eventhub_authorization_rule.policy.primary_connection_string
}

