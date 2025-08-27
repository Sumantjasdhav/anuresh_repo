resource "azurerm_resource_group" "example" {
  name     = "rg1_sumant"
  location = "West Europe"
}
resource "azurerm_resource_group" "example3" {
  name     = "rg2_sumant"
  location = "West Europe"
}

resource "azurerm_storage_account" "example1" {
    depends_on = [ azurerm_resource_group.example ]
  name                     = "sumant1storaccount"
  resource_group_name      = "rg1_sumant"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
resource "azurerm_storage_account" "example4" {
    depends_on = [ azurerm_resource_group.example ]
  name                     = "sumant2storaccount"
  resource_group_name      = "rg2_sumant"
  location                 = "eastus"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


resource "azurerm_storage_container" "example2" {
    depends_on = [ azurerm_storage_account.example1 ]
  name                  = "sumant1container"
  storage_account_id    = azurerm_storage_account.example1.id
  container_access_type = "private"
}



