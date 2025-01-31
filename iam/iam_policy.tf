resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-09e6c181-9d33-4497-b372-19e51af0bc3a" {
  name = "AWSLambdaBasicExecutionRole-09e6c181-9d33-4497-b372-19e51af0bc3a"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/sql_lambda_mamh:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-0d88a53d-b5f2-4722-af1a-1b7f1d792e0e" {
  name = "AWSLambdaBasicExecutionRole-0d88a53d-b5f2-4722-af1a-1b7f1d792e0e"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/lambda_db_cesar:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-26e3f0e6-4d68-48f5-8e8b-3b737e9b1722" {
  name = "AWSLambdaBasicExecutionRole-26e3f0e6-4d68-48f5-8e8b-3b737e9b1722"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/readtest:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-3f3e04ba-ba47-465f-b95e-af39bfa061c7" {
  name = "AWSLambdaBasicExecutionRole-3f3e04ba-ba47-465f-b95e-af39bfa061c7"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/sql-function:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-4ab1553e-0874-4dc1-835a-73d214198b84" {
  name = "AWSLambdaBasicExecutionRole-4ab1553e-0874-4dc1-835a-73d214198b84"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/SQLQueryJoan:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-874e5450-b336-4954-a12b-eb2fec545a1d" {
  name = "AWSLambdaBasicExecutionRole-874e5450-b336-4954-a12b-eb2fec545a1d"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/ricardo_sqlconnect:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-8862cee0-3521-4509-88a5-db560cf07fba" {
  name = "AWSLambdaBasicExecutionRole-8862cee0-3521-4509-88a5-db560cf07fba"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/oscar_lambda_db:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-8eadd90a-b0ed-4d2e-9aba-abe956364ede" {
  name = "AWSLambdaBasicExecutionRole-8eadd90a-b0ed-4d2e-9aba-abe956364ede"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/josue_sqlconnect:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-af38241d-1b16-4f60-ab82-ee7019819d09" {
  name = "AWSLambdaBasicExecutionRole-af38241d-1b16-4f60-ab82-ee7019819d09"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/ricardo_sqlconnect:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-b0b5ba20-dc33-4130-a5b0-c2f8953bec56" {
  name = "AWSLambdaBasicExecutionRole-b0b5ba20-dc33-4130-a5b0-c2f8953bec56"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/lambda-inventario-cine:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-bb2ab999-cf78-4aea-925f-a729833a1726" {
  name = "AWSLambdaBasicExecutionRole-bb2ab999-cf78-4aea-925f-a729833a1726"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/dbconnectiondaniel:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-d119f234-b47c-439d-a39b-1f3d3f317114" {
  name = "AWSLambdaBasicExecutionRole-d119f234-b47c-439d-a39b-1f3d3f317114"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/funcionEquipoDinamitaGeneratePOSData:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AWSLambdaBasicExecutionRole-e69a771f-c562-411a-b943-544bf393d96a" {
  name = "AWSLambdaBasicExecutionRole-e69a771f-c562-411a-b943-544bf393d96a"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "logs:CreateLogGroup",
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:*"
    },
    {
      "Action": [
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/connectdb_jafet:*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--Amazon-EventBridge-Scheduler-Execution-Policy-ea4c3d86-16da-4555-8827-eca9b2d7d7be" {
  name = "Amazon-EventBridge-Scheduler-Execution-Policy-ea4c3d86-16da-4555-8827-eca9b2d7d7be"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "lambda:InvokeFunction"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:lambda:us-east-1:116981779666:function:funcionEquipoDinamitaGeneratePOSData:*",
        "arn:aws:lambda:us-east-1:116981779666:function:funcionEquipoDinamitaGeneratePOSData"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--AmazoneSageMakerManageAccessPolicy-45nw7full1qdpj" {
  name = "AmazoneSageMakerManageAccessPolicy-45nw7full1qdpj"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "secretsmanager:GetSecretValue",
      "Condition": {
        "StringEquals": {
          "secretsmanager:ResourceTag/AmazonDataZoneDomain": "dzd_45nw7full1qdpj"
        }
      },
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "RedshiftSecretStatement"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--SageMakerStudioQueryExecutionRolePolicy" {
  name = "SageMakerStudioQueryExecutionRolePolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "glue:GetConnection",
      "Effect": "Allow",
      "Resource": "arn:aws:glue:*:*:catalog"
    },
    {
      "Action": [
        "glue:GetConnection",
        "glue:GetConnections",
        "glue:GetTags"
      ],
      "Condition": {
        "Null": {
          "aws:ResourceTag/AmazonDataZoneProject": "false"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:glue:*:*:connection/*"
    },
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::*/dzd_*/*/dev/sys/athena/*"
    },
    {
      "Action": "s3:ListBucket",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::*"
    },
    {
      "Action": "lambda:InvokeFunction",
      "Condition": {
        "Null": {
          "aws:ResourceTag/AmazonDataZoneProject": "false",
          "aws:ResourceTag/federated_athena_datacatalog": "false"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:lambda:*:*:function:*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--cesarentrecuentas" {
  name = "cesarentrecuentas"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::xideralcesarpractica",
        "arn:aws:s3:::xideralcesarpractica/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--cesarglue" {
  name = "cesarglue"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "glue:GetSession",
        "glue:PassConnection",
        "glue:RunStatement",
        "glue:CreateSession"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--cesars3gluepolicy" {
  name = "cesars3gluepolicy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:*",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--connector-manage-access-policy-bjyrew4m9sx50n-dev" {
  name = "connector-manage-access-policy-bjyrew4m9sx50n-dev"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/for-use-with-all-datazone-projects": "true"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:*:secretsmanager:*:*:secret:*"
    },
    {
      "Action": [
        "logs:CreateLogGroup",
        "logs:CreateLogStream",
        "logs:PutLogEvents"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:logs:us-east-1:116981779666:log-group:/aws/lambda/*"
    },
    {
      "Action": [
        "es:List*",
        "es:Describe*",
        "es:ESHttp*"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/AmazonDataZoneProject": "${aws:PrincipalTag/AmazonDataZoneProject}"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "es:List*",
        "es:Describe*",
        "es:ESHttp*"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/for-use-with-all-datazone-projects": "true"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "es:List*",
        "es:Describe*",
        "es:ESHttp*"
      ],
      "Condition": {
        "StringNotEquals": {
          "aws:ResourceAccount": "$${aws:PrincipalAccount}"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "dynamodb:ListTables"
      ],
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": [
        "ec2:CreateNetworkInterface",
        "ec2:DescribeSubnets",
        "ec2:DetachNetworkInterface"
      ],
      "Condition": {
        "StringEquals": {
          "ec2:Vpc": "${aws:PrincipalTag/vpcArn}"
        }
      },
      "Effect": "Allow",
      "Resource": "*"
    },
    {
      "Action": "ec2:CreateNetworkInterface",
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:*:*:network-interface/*"
    },
    {
      "Action": "ec2:DeleteNetworkInterface",
      "Effect": "Allow",
      "Resource": "arn:aws:ec2:*:*:*/*"
    },
    {
      "Action": [
        "ec2:DescribeNetworkInterfaces"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--datazone-emr-instance-profile-role-bjyrew4m9sx50n-dev" {
  description = "Allow EMR runtime role usage"
  name        = "datazone-emr-instance-profile-role-bjyrew4m9sx50n-dev"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRole",
        "sts:TagSession"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:iam::116981779666:role/datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
      ],
      "Sid": "AllowRuntimeRoleUsage"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::amazon-sagemaker-116981779666-us-east-1-dba277b742b6/dzd_45nw7full1qdpj/6jw4wtluwzqx47/dev/sys/emr/bootstrap-script/*"
      ],
      "Sid": "S3PermissionForBootstrap"
    },
    {
      "Action": [
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::amazon-sagemaker-116981779666-us-east-1-dba277b742b6/dzd_45nw7full1qdpj/6jw4wtluwzqx47/dev/sys/emr/*"
      ],
      "Sid": "S3PermissionForClusterLog"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--datazone-emr-pass-role-to-ec2-bjyrew4m9sx50n-dev" {
  description = "Allow pass role to EC2"
  name        = "datazone-emr-pass-role-to-ec2-bjyrew4m9sx50n-dev"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "iam:PassRole",
      "Condition": {
        "StringLike": {
          "iam:PassedToService": "ec2.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": "arn:aws:iam::116981779666:role/datazone_emr_ec2_instance_role_6jw4wtluwzqx47_bjyrew4m9sx50n",
      "Sid": "PassRoleToEMREC2Role"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--datazone-ml-resources-policy-bjyrew4m9sx50n" {
  description = "User policy for SageMaker ML resources permissions."
  name        = "datazone-ml-resources-policy-bjyrew4m9sx50n"
  path        = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sagemaker:DescribeModelPackage",
        "sagemaker:DescribeModelPackageGroup",
        "sagemaker:BatchDescribeModelPackage"
      ],
      "Condition": {
        "StringNotEquals": {
          "aws:ResourceAccount": "116981779666"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:*:sagemaker:*:*:*/*"
      ],
      "Sid": "SageMakerCrossAccountReadPermissions"
    },
    {
      "Action": [
        "s3:GetObject"
      ],
      "Condition": {
        "StringNotEquals": {
          "aws:ResourceAccount": "116981779666"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::jumpstart-cache-prod-us-east-1/*"
      ],
      "Sid": "SageMakerJumpstartS3Access"
    },
    {
      "Action": [
        "sagemaker:DescribeModelPackage",
        "sagemaker:DescribeModelPackageGroup",
        "sagemaker:BatchDescribeModelPackage"
      ],
      "Condition": {
        "StringEquals": {
          "aws:ResourceTag/sagemaker:shared-with:bjyrew4m9sx50n": [
            "ro",
            "rw"
          ]
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:sagemaker:*:*:domain/*",
        "arn:aws:sagemaker:*:*:user-profile/*",
        "arn:aws:sagemaker:*:*:app/*",
        "arn:aws:sagemaker:*:*:space/*",
        "arn:aws:sagemaker:*:*:flow-definition/*"
      ],
      "Sid": "SageMakerReadPermissionsOnSharedResources"
    },
    {
      "Action": [
        "sagemaker:ListTags"
      ],
      "Condition": {
        "StringEqualsIfExists": {
          "aws:ResourceTag/AmazonDataZoneProject": "${aws:PrincipalTag/AmazonDataZoneProject}"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "*"
      ],
      "Sid": "SageMakerListTagsRestrictionOnSharedResources"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--ec2_all_policy" {
  name = "ec2_all_policy"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "ec2:*",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--rds-proxy-policy-1738254720162" {
  name = "rds-proxy-policy-1738254720162"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:116981779666:secret:oscar/db1/credentials-7jc96y"
      ],
      "Sid": "GetSecretValue"
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "secretsmanager.us-east-1.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:116981779666:key/alias/aws/secretsmanager"
      ],
      "Sid": "DecryptSecretValue"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--rds-proxy-policy-1738254851779" {
  name = "rds-proxy-policy-1738254851779"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:116981779666:secret:rds-db-credentials/database-1/admin/1738254851779-DOdDsh"
      ],
      "Sid": "GetSecretValue"
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "secretsmanager.us-east-1.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:116981779666:key/alias/aws/secretsmanager"
      ],
      "Sid": "DecryptSecretValue"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--rds-proxy-policy-1738255123498" {
  name = "rds-proxy-policy-1738255123498"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:116981779666:secret:oscar/db1/credentials-7jc96y"
      ],
      "Sid": "GetSecretValue"
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "secretsmanager.us-east-1.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:116981779666:key/alias/aws/secretsmanager"
      ],
      "Sid": "DecryptSecretValue"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--rds-proxy-policy-1738255236081" {
  name = "rds-proxy-policy-1738255236081"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:116981779666:secret:rds-db-credentials/database-1/admin/1738255236081-Q9bzvm"
      ],
      "Sid": "GetSecretValue"
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "secretsmanager.us-east-1.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:116981779666:key/alias/aws/secretsmanager"
      ],
      "Sid": "DecryptSecretValue"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--rds-proxy-policy-1738255516616" {
  name = "rds-proxy-policy-1738255516616"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:116981779666:secret:oscar/db1/credentials-7jc96y"
      ],
      "Sid": "GetSecretValue"
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "secretsmanager.us-east-1.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:116981779666:key/alias/aws/secretsmanager"
      ],
      "Sid": "DecryptSecretValue"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--rds-proxy-policy-1738255738420" {
  name = "rds-proxy-policy-1738255738420"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:116981779666:secret:oscar/db1/credentials-7jc96y"
      ],
      "Sid": "GetSecretValue"
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "secretsmanager.us-east-1.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:116981779666:key/alias/aws/secretsmanager"
      ],
      "Sid": "DecryptSecretValue"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--rds-proxy-policy-1738256332658" {
  name = "rds-proxy-policy-1738256332658"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:116981779666:secret:rds-db-credentials/database-1/admin/1738256332658-83Y7lN"
      ],
      "Sid": "GetSecretValue"
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "secretsmanager.us-east-1.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:116981779666:key/alias/aws/secretsmanager"
      ],
      "Sid": "DecryptSecretValue"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--rds-proxy-policy-1738256636827" {
  name = "rds-proxy-policy-1738256636827"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:116981779666:secret:rds-db-credentials/database-1/admin/1738256636827-WBfBW0"
      ],
      "Sid": "GetSecretValue"
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "secretsmanager.us-east-1.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:116981779666:key/alias/aws/secretsmanager"
      ],
      "Sid": "DecryptSecretValue"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--rds-proxy-policy-1738256955021" {
  name = "rds-proxy-policy-1738256955021"
  path = "/service-role/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:GetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:secretsmanager:us-east-1:116981779666:secret:rds-db-credentials/database-1/admin/1738256955021-ZlV33Q"
      ],
      "Sid": "GetSecretValue"
    },
    {
      "Action": [
        "kms:Decrypt"
      ],
      "Condition": {
        "StringEquals": {
          "kms:ViaService": "secretsmanager.us-east-1.amazonaws.com"
        }
      },
      "Effect": "Allow",
      "Resource": [
        "arn:aws:kms:us-east-1:116981779666:key/alias/aws/secretsmanager"
      ],
      "Sid": "DecryptSecretValue"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--s3_forglue_Jafet" {
  name = "s3_forglue_Jafet"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "logs:CreateLogStream",
        "s3:ListBucket",
        "s3:GetBucketAcl",
        "logs:CreateLogGroup"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:logs:jafetglue:116981779666:log-group:*",
        "arn:aws:logs:us-east-1:116981779666:log-group:*:log-stream:*",
        "arn:aws:s3:::jafetglue/*",
        "arn:aws:s3:::aws-glue-assets-116981779666-us-east-1/*"
      ],
      "Sid": "VisualEditor0"
    },
    {
      "Action": "sts:GetCallerIdentity",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--s3_glue_getObject_josue" {
  name = "s3_glue_getObject_josue"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::josueglue/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--s3_glue_getobject_ricardoglue" {
  name = "s3_glue_getobject_ricardoglue"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::ricardoglue/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--s3_glue_test_benjamin" {
  name = "s3_glue_test_benjamin"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:DeleteAccessGrant",
        "s3:PauseReplication",
        "s3:PutAnalyticsConfiguration",
        "s3:PutAccessPointConfigurationForObjectLambda",
        "s3:DeleteAccessPoint",
        "s3:CreateBucket",
        "s3:CreateBucketMetadataTableConfiguration",
        "s3:DeleteAccessPointForObjectLambda",
        "s3:ReplicateObject",
        "s3:DeleteBucketWebsite",
        "s3:DissociateAccessGrantsIdentityCenter",
        "s3:PutLifecycleConfiguration",
        "s3:DeleteObject",
        "s3:CreateMultiRegionAccessPoint",
        "s3:DeleteAccessGrantsInstanceResourcePolicy",
        "s3:PutReplicationConfiguration",
        "s3:PutObjectLegalHold",
        "s3:InitiateReplication",
        "s3:PutBucketCORS",
        "s3:PutObject",
        "s3:PutBucketNotification",
        "s3:PutBucketLogging",
        "s3:CreateAccessGrant",
        "s3:PutBucketObjectLockConfiguration",
        "s3:DeleteBucketMetadataTableConfiguration",
        "s3:CreateAccessPoint",
        "s3:PutAccelerateConfiguration",
        "s3:SubmitMultiRegionAccessPointRoutes",
        "s3:CreateAccessGrantsLocation",
        "s3:DeleteObjectVersion",
        "s3:RestoreObject",
        "s3:DeleteAccessGrantsLocation",
        "s3:PutEncryptionConfiguration",
        "s3:DeleteAccessGrantsInstance",
        "s3:AbortMultipartUpload",
        "s3:AssociateAccessGrantsIdentityCenter",
        "s3:DeleteStorageLensGroup",
        "s3:UpdateJobPriority",
        "s3:DeleteBucket",
        "s3:PutBucketVersioning",
        "s3:PutIntelligentTieringConfiguration",
        "s3:UpdateStorageLensGroup",
        "s3:PutMetricsConfiguration",
        "s3:DeleteMultiRegionAccessPoint",
        "s3:UpdateJobStatus",
        "s3:CreateAccessGrantsInstance",
        "s3:PutInventoryConfiguration",
        "s3:DeleteStorageLensConfiguration",
        "s3:PutBucketWebsite",
        "s3:PutBucketRequestPayment",
        "s3:PutObjectRetention",
        "s3:CreateAccessPointForObjectLambda",
        "s3:UpdateAccessGrantsLocation",
        "s3:PutAccessGrantsInstanceResourcePolicy",
        "s3:ReplicateDelete"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::benjaminglue/*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "s3:CreateStorageLensGroup",
        "s3:PutStorageLensConfiguration",
        "s3:CreateJob"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  tags = {
    environment = "prd"
  }

  tags_all = {
    environment = "prd"
  }
}

resource "aws_iam_policy" "tfer--s3_glue_test_daniel" {
  name = "s3_glue_test_daniel"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::danielglue/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  tags = {
    environment = "prd"
  }

  tags_all = {
    environment = "prd"
  }
}

resource "aws_iam_policy" "tfer--s3_glue_test_joan" {
  name = "s3_glue_test_joan"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::joanglue/*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": "s3:PutObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::joanglue/*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  tags = {
    enviroment = "prod"
  }

  tags_all = {
    enviroment = "prod"
  }
}

resource "aws_iam_policy" "tfer--s3_glue_test_mike" {
  name = "s3_glue_test_mike"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::miguelglue/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY
}

resource "aws_iam_policy" "tfer--s3_glue_test_oscar" {
  name = "s3_glue_test_oscar"
  path = "/"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::oscarglue/*",
        "arn:aws:s3:::oscarglue"
      ],
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  tags = {
    env = "prod"
  }

  tags_all = {
    env = "prod"
  }
}
