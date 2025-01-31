provider "aws"{
    region="us-east-1"
}
module "s3_bucket" {
    source = "./modules/s3_bucket"
    bucket_name = "xideraloriginbucketdinamita"
}

module "lambda" {
    source = "./modules/lambda"
    lambda_name = "okis"
    bucket_arn = module.s3_bucket.bucket_arn
    lambda_zip_path = "./modules/lambda/funcionEquipoDinamitaGeneratePOSData-18f69934-b9d4-495c-b4bc-19703487fef8.zip"
}