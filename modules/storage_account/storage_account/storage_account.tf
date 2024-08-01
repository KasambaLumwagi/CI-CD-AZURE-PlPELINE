resource "azurerm_storage_account" "storage" {
    name = var.storage_account_name
    resource_group_name = var.resource_group_name
    location = var.location
    account_tier = "Standard"
    account_replication_type = "LRS"
    tags = {
        environment = "development"
    }
}

resource "azurerm_storage_container" "create_container" {
    for each = {
        source = var.source_folder_name
        destination = var.destinationf
    }
}