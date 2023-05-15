module "create-azure-sql" {
    source = "./AzureSQLTerraform"

    name = var.name
    location = var.location
    resource_group = var.resource_group
    admin_username = var.admin_username
    admin_password = var.admin_password
}