output "lambda_role_arn" {
    description = "Lambda role ARN"
    value = aws_iam_role.iam_for_lambda.arn
}

output "glue_full_role_arn" {
    description = "Glue role ARN"
    value = aws_iam_role.glue_role_full_dinamita.arn
}