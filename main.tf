resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group_name}"
  location = "${var.location}"
}

module "eventhub" {
  source              = "./modules/eventhub"
  namespace_name      = "${var.namespace_name}"
  location            = "${azurerm_resource_group.rg.location}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  environment         = "${var.environment}"
  eventhub_name       = "${var.eventhub_name}"
}

module "consumer-access-policy" {
  source              = "./modules/eventhub-access-policy"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  namespace_name      = "${module.eventhub.namespace_name}"
  eventhub_name       = "${module.eventhub.eventhub_name}"
  access_type         = "consumer"
}

module "producer-access-policy" {
  source              = "./modules/eventhub-access-policy"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  namespace_name      = "${module.eventhub.namespace_name}"
  eventhub_name       = "${module.eventhub.eventhub_name}"
  access_type         = "producer"
}

module "consumergroups" {
  source               = "./modules/eventhub-consumergroup"
  consumer_group_names = "${var.consumergroup_names}"
  resource_group_name  = "${azurerm_resource_group.rg.name}"
  namespace_name       = "${module.eventhub.namespace_name}"
  eventhub_name        = "${module.eventhub.eventhub_name}"
}

module "storage" {
  source               = "./modules/storage"
  resource_group_name  = "${azurerm_resource_group.rg.name}"
  location             = "${azurerm_resource_group.rg.location}"
  storage_account_name = "${var.storage_account_name}"
  environment          = "${var.environment}"
  blob_containers      = "${var.consumergroup_names}"
}
