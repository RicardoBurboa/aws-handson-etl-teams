resource "aws_lambda_function" "stock_generator_lambda" {
    filename      = var.lambda_zip_path
    function_name = var.lambda_name
    role          = var.lambda_role_arn
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
    arn       = aws_lambda_function.stock_generator_lambda.arn
}

# Otorgar permisos a EventBridge para ejecutar Lambda
resource "aws_lambda_permission" "allow_eventbridge" {
    statement_id  = "AllowExecutionFromEventBridge"
    action        = "lambda:InvokeFunction"
    principal     = "events.amazonaws.com"
    function_name = aws_lambda_function.stock_generator_lambda.function_name
    source_arn    = aws_cloudwatch_event_rule.daily_rule.arn
}