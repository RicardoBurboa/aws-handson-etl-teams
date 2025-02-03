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
    name               = "s3_putobject_dinamita_xideral"
    assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

# IAM Policy: Grants Lambda access to S3
data "aws_iam_policy_document" "lambda_s3_policy" {
    statement {
        effect    = "Allow"
        actions   = ["s3:PutObject"]
        resources = [
            var.stock_gen_bucket_arn,
            "${var.stock_gen_bucket_arn}/*"
        ]
    }
}

# Attach the S3 policy to the IAM role
resource "aws_iam_policy" "lambda_s3_access" {
    name   = "lambda_s3_access_policy_dinamita"
    policy = data.aws_iam_policy_document.lambda_s3_policy.json
}

# Attach the IAM policy to the Lambda role
resource "aws_iam_role_policy_attachment" "lambda_s3_attachment" {
    policy_arn = aws_iam_policy.lambda_s3_access.arn
    role       = aws_iam_role.iam_for_lambda.name
}


#--------- GLUE Role------
data "aws_iam_policy_document" "assume_role_glue" {
    statement {
        effect = "Allow"

        principals {
            type        = "Service"
            identifiers = ["glue.amazonaws.com"]
        }

        actions = ["sts:AssumeRole"]
    }
}

resource "aws_iam_role" "glue_role_full_dinamita" {
    name               = "glue_full_dinamita"
    assume_role_policy = data.aws_iam_policy_document.assume_role_glue.json
}

data "aws_iam_policy_document" "glue_full_policy" {
    statement {
        effect    = "Allow"
        actions   = ["*"]
        resources = [
            "*"
        ]
    }
}

resource "aws_iam_policy" "glue_full_access" {
    name   = "glue_full_access_policy_dinamita"
    policy = data.aws_iam_policy_document.glue_full_policy.json
}

resource "aws_iam_role_policy_attachment" "glue_full_attachment" {
    policy_arn = aws_iam_policy.glue_full_access.arn
    role       = aws_iam_role.glue_role_full_dinamita.name
}