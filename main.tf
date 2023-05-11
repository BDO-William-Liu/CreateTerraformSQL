module "create-azure-sql" {
    source = "./AzureSQLTerraform"

    name = var.name
    location = var.location
    admin_username = var.admin_username
    admin_password = var.admin_password
}