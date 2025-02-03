provider "aws"{
    region="us-east-1"
}
module "s3_bucket" {
    source = "./modules/s3_bucket"
    bucket_name = "xideraldanielpractice"
    bucket_output_name = "xideraloutputdinamiton"
}

module "lambda" {
    source = "./modules/lambda"
    lambda_name = "okis"
    bucket_name = module.s3_bucket.bucket_name
    bucket_arn = module.s3_bucket.bucket_arn
    lambda_zip_path = "./modules/lambda/funcionEquipoDinamitaGeneratePOSData-18f69934-b9d4-495c-b4bc-19703487fef8.zip"
}

module "rds" {
  source        = "./modules/rds"
  db_username   = var.db_username
  db_password   = var.db_password
  db_name       = var.db_name
  rds_identifier = var.rds_identifier
}


module "crawler" {
  source        = "./modules/crawler"
  bucket_name_cesar = "mergedatainventarioeq2"
  gluedb_name = "testo"
}

module "notebook" {
  source           = "./modules/notebook"
  glue_job_name    = "dinamitason"
  iam_role_arn     = var.glue_full
  s3_bucket        = "equipodinamita"
  s3_script_key    = "equipodinamita.py"
  number_of_workers = 5
}
