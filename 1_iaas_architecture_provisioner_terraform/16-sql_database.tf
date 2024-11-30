module "sql_database" {
  source               = "../shared_modules/modules/sql_database"
  name                 = var.sql_db_name
  server_id            = module.sql_server.sql_server.id
  collation            = var.sql_db_collation
  license_type         = var.sql_db_license_type
  max_size_gb          = var.sql_db_max_size_gb
  sku_name             = var.sql_db_sku_name
  enclave_type         = var.sql_db_enclave_type
  storage_account_type = var.sql_db_storage_account_type
  geo_backup_enabled   = var.sql_db_geo_backup_enabled
}
