resource "aws_db_instance" "default" {
  allocated_storage    = 200
  max_allocated_storage = 240
  db_name              = var.db_name
  storage_type         = "gp3"
  identifier           = var.rds_identifier
  engine               = "mysql"
  engine_version       = "8.0"
  instance_class       = "db.t3.micro"
  username             = var.db_username
  password             = var.db_password
  parameter_group_name = "default.mysql8.0"
  storage_encrypted    = true
  skip_final_snapshot  = true
  publicly_accessible  = true
}