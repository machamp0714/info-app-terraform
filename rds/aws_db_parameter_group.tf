resource "aws_db_parameter_group" "db_parameter_group" {
  name   = "info-app-db-parameter-group"
  family = "mysql5.7"

  parameter {
    name  = "character_set_database"
    value = "utf8mb4"
  }

  parameter {
    name  = "character_set_server"
    value = "utf8mb4"
  }
}
