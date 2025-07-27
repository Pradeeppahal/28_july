resource "azurerm_resource_group" "rg" {
  name     = "pradeeprg"
  location = "West Europe"
}





resource "azurerm_storage_account" "stg" {
  name                     = "pradeepstg"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

}