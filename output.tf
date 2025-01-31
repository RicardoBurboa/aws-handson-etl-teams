
module "lambda" {
  source      = "./module/lambda"
  lambda_name = "lambamintona"  # Passing the lambda name here
}

module "s3_bucket" {
    source = "./module/s3-bucket"
    bucket_name = "equipodinamiton"

  
}
