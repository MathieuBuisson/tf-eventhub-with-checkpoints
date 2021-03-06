provider "azurerm" {
  # Preventing automatic upgrades to new versions that may contain breaking changes.
  # Any non-beta version >= 1.31.0 and < 2.0.0
  version = "~>1.31"
}

terraform {
  required_version = ">= 0.12"
}
