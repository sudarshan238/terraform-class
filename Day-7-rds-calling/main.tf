module "RDS" {
  source                  = "../Day-7-rds"
  allocated_storage       = 20
  storage_type            = "gp2"
  engine                  = "mysql"
  engine_version          = "8.0.42"
  instance_class          = "db.t3.micro"
  db_name                 = "maindb"                # ✅ FIXED: No hyphen
  identifier              = "dev-rds"
  username                = "admin"
  password                = "Sudha#238"
  skip_final_snapshot     = true
  publicly_accessible     = true
  backup_retention_period = 7
}

