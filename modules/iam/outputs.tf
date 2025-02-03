output "lambda_role_arn" {
    description = "Lambda role ARN"
    value = aws_iam_role.iam_for_lambda.arn
}