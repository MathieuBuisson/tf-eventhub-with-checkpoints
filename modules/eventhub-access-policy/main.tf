locals {
  default_policy_name = "${var.access_type == "consumer" ? "RootManageSharedAccessKey" : "SenderAccessKey"}"
  access_policy_name  = "${var.access_policy_name != "" ? var.access_policy_name : local.default_policy_name}"
}

resource "azurerm_eventhub_authorization_rule" "policy" {
  name                = "${local.access_policy_name}"
  namespace_name      = "${var.namespace_name}"
  eventhub_name       = "${var.eventhub_name}"
  resource_group_name = "${var.resource_group_name}"
  listen              = "${var.access_type == "consumer" ? true : false}"
  manage              = "${var.access_type == "consumer" ? true : false}"
  send                = true
}
