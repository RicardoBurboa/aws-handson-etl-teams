
module "s3_bucket" {
    source = "./modules/s3_bucket"
    bucket_name_stock_files = "xideraloriginbucketdinamita2"
    aws_region = "us-east-1"
}

module "lambda" {
    source = "./modules/lambda"
    lambda_name = "funcionEquipoDinamitaGeneratePOSData2"
    lambda_zip_path = "./modules/lambda/funcionEquipoDinamitaGeneratePOSData-18f69934-b9d4-495c-b4bc-19703487fef8.zip"
    aws_region = "us-east-1"
    target_bucket_arn = module.s3_bucket.bucket_arn
    target_bucket_name = module.s3_bucket.bucket_name
}