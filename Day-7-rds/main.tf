resource "aws_db_instance" "dev_rds" {
  allocated_storage        = var.allocated_storage
  storage_type             = var.storage_type
  engine                   = var.engine
  engine_version           = var.engine_version
  instance_class           = var.instance_class
  db_name                   = var.db_name
  identifier               = var.identifier
  username                 = var.username
  password                 = var.password
  skip_final_snapshot      = var.skip_final_snapshot
  publicly_accessible      = var.publicly_accessible
  backup_retention_period  = var.backup_retention_period

  # Optional but recommended settings
  apply_immediately        = true
  deletion_protection      = false
  multi_az                 = false
}
