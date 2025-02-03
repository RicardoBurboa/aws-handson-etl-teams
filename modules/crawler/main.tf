data "aws_iam_policy_document" "assume_role" {
  statement {
    effect = "Allow"

    principals {
      type        = "Service"
      identifiers = ["glue.amazonaws.com"]
    }

    actions = ["sts:AssumeRole"]
  }
}

resource "aws_iam_role" "iam_for_glue" {
  name               = "s3_getobjects"
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

data "aws_s3_bucket" "bucket_team_cesar" {
  bucket = var.bucket_name_cesar
}

data "aws_iam_policy_document" "glue_s3_policy" {
  statement {
    effect    = "Allow"
    actions   = [
      "glue:*",
      "s3:GetBucketLocation",
      "s3:ListBucket",
      "s3:ListAllMyBuckets",
      "s3:GetBucketAcl",
      "iam:ListRolePolicies",
      "iam:GetRole",
      "iam:GetRolePolicy",
      "cloudwatch:PutMetricData"
    ]
    resources = ["*"]
  }

  statement {
    effect    = "Allow"
    actions   = [
      "s3:GetObject",
    ]
    resources = [
      data.aws_s3_bucket.bucket_team_cesar.arn,
      "${data.aws_s3_bucket.bucket_team_cesar.arn}/*"
    ]
  }

  statement {
    effect    = "Allow"
    actions   = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents"
    ]
    resources = [
      "arn:aws:logs:*:*:*:/aws-glue/*"
    ]
  }

}


# Attach the S3 policy to the IAM role
resource "aws_iam_policy" "glue_s3_access" {
  name   = "glue_s3_getobject"
  policy = data.aws_iam_policy_document.glue_s3_policy.json
}

# Attach the IAM policy to the glue role
resource "aws_iam_role_policy_attachment" "glue_s3_attachment" {
  policy_arn = aws_iam_policy.glue_s3_access.arn
  role       = aws_iam_role.iam_for_glue.name
}



resource "aws_glue_catalog_database" "databaseglue" {
  name = var.gluedb_name
}

resource "aws_glue_crawler" "crawldinamita" {
  name          = "equipodinamita"
  database_name = aws_glue_catalog_database.databaseglue.name
  role          = aws_iam_role.iam_for_glue.arn
  schedule      = "cron(0 0 * * ? *)"

  s3_target {
    path = "s3://${var.bucket_name_cesar}"
  }
}
