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
  name               = "s3_putobject_daniel_xideral"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

# IAM Policy: Grants Lambda access to S3
# TODO: Revisar comunicacion entre modulos de TF
data "aws_iam_policy_document" "lambda_s3_policy" {
  statement {
    effect    = "Allow"
    actions   = ["s3:PutObject"]
    resources = [
      var.bucket_arn,
      "${var.bucket_arn}/*"
    ]
  }
}

# Attach the S3 policy to the IAM role
resource "aws_iam_policy" "lambda_s3_access" {
  name   = "lambda_s3_access_policy_daniel"
  policy = data.aws_iam_policy_document.lambda_s3_policy.json
}

# Attach the IAM policy to the Lambda role
resource "aws_iam_role_policy_attachment" "lambda_s3_attachment" {
  policy_arn = aws_iam_policy.lambda_s3_access.arn
  role       = aws_iam_role.iam_for_lambda.name
}

resource "aws_lambda_function" "test_lambda" {
  filename      = var.lambda_zip_path
  function_name = var.lambda_name
  role          = aws_iam_role.iam_for_lambda.arn
  handler       = "lambda_function.lambda_handler"

  source_code_hash = filebase64sha256(var.lambda_zip_path)

  runtime = "python3.11"

  environment {
    variables = {
      bucket_name = var.bucket_name
    }
  }
}

# Crear una regla de EventBridge que se ejecute cada día
resource "aws_cloudwatch_event_rule" "daily_rule" {
  name        = "daily_event_rule"
  description = "Regla para ejecutar Lambda cada día"
  schedule_expression = "rate(1 day)"  # Esto ejecuta la Lambda cada 24 horas

  # Se puede agregar más detalles como filtros si es necesario
}

# Vincular la función Lambda como destino de la regla de EventBridge
resource "aws_cloudwatch_event_target" "lambda_target" {
  rule      = aws_cloudwatch_event_rule.daily_rule.name
  arn       = aws_lambda_function.test_lambda.arn
}

# Otorgar permisos a EventBridge para ejecutar Lambda
resource "aws_lambda_permission" "allow_eventbridge" {
  statement_id  = "AllowExecutionFromEventBridge"
  action        = "lambda:InvokeFunction"
  principal     = "events.amazonaws.com"
  function_name = aws_lambda_function.test_lambda.function_name
  source_arn    = aws_cloudwatch_event_rule.daily_rule.arn
}

