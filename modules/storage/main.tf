resource "azurerm_storage_account" "sa" {
  name                      = "${var.storage_account_name}"
  resource_group_name       = "${var.resource_group_name}"
  location                  = "${var.location}"
  account_tier              = "${var.storage_account_tier}"
  account_replication_type  = "${var.storage_replication_type}"
  account_kind              = "${var.storage_account_kind}"
  enable_blob_encryption    = "${var.blob_encryption}"
  enable_file_encryption    = "${var.file_encryption}"
  account_encryption_source = "${var.encryption_key_source}"
  enable_https_traffic_only = "${var.https_only}"

  tags = {
    environment = "${var.environment}"
  }
}

resource "azurerm_storage_container" "containers" {
  count                 = "${length(var.blob_containers)}"
  name                  = "${var.blob_containers[count.index]}"
  resource_group_name   = "${var.resource_group_name}"
  storage_account_name  = "${azurerm_storage_account.sa.name}"
  container_access_type = "${var.container_access_type}"
}
