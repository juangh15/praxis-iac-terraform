# Creating RDS Intance
resource "aws_db_instance" "rds_db_instance" {
  allocated_storage    = var.rds_allocated_storage
  engine               = var.rds_engine
  engine_version       = var.rds_engine_version
  instance_class       = var.rds_instance_class
  name                 = var.rds_name
  username             = var.rds_username
  password             = var.rds_password
  tags                 = var.rds_tags
  port                 = var.rds_port
}