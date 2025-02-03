resource "aws_db_subnet_group" "default" {
  name        = "default-vpc-04e1df50e3aeb3195"
  description = "Grupo de subredes para RDS"
  subnet_ids  = [
    "subnet-083c9c30fcc868cc6",
    "subnet-0c5dbb686daa8dedb",
    "subnet-00106d88a55fb31ae",
    "subnet-0901ce46c02a0c637",
    "subnet-08565a4496395c568",
    "subnet-049a424f87af81686",
    "subnet-01459e54b1176ede1",
    "subnet-05f0a531885cb4031",
    "subnet-0668d55bd309c0a09",
    "subnet-0c4bf3a8a7590ab9b",
    "subnet-0e7112a7169bd6036"
  ]
}
# Elimina la instancia actual
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
  db_subnet_group_name = aws_db_subnet_group.default.name
  # Asegúrate de que la instancia sea eliminada y recreada si es necesario.
}
