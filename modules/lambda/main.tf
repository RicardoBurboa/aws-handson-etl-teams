data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["lambda.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "iam_for_lambda" {
  name               = "funcionEquipoDinamitaGeneratePOSData-role"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

# IAM Policy: Grants Lambda access to S3
# TODO: Revisar comunicacion entre modulos de TF
data "aws_iam_policy_document" "lambda_s3_policy" {
  statement {
    effect    = "Allow"
    actions   = ["s3:PutObject"]
    resources = [
      aws_s3_bucket.main_bucket.arn,
      "${aws_s3_bucket.main_bucket.arn}/*"
    ]
  }
}

# Attach the S3 policy to the IAM role
resource "aws_iam_policy" "lambda_s3_access" {
  name   = "lambda_s3_access_policy"
  policy = data.aws_iam_policy_document.lambda_s3_policy.json
}

# Attach the IAM policy to the Lambda role
resource "aws_iam_role_policy_attachment" "lambda_s3_attachment" {
  policy_arn = aws_iam_policy.lambda_s3_access.arn
  role       = aws_iam_role.lambda_role.name
}

data "archive_file" "lambda" {
  type        = "zip"
  source_file = "lambda_function.py"
  output_path = var.lambda_zip_path
}

resource "aws_lambda_function" "test_lambda" {
  filename      = var.lambda_zip_path
  function_name = var.lambda_name
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "lambda_handler"

  source_code_hash = data.archive_file.lambda.output_base64sha256

  runtime = "python3.11"

  environment {
    variables = {
      foo = "bar"
    }
  }
}
