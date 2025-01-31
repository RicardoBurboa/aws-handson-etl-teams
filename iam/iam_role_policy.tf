resource "aws_iam_role_policy" "tfer--SQLQueryJoan-role-t6itxh6g_secrets_policy" {
  name = "secrets_policy"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "secretsmanager:DescribeSecret",
        "secretsmanager:PutSecretValue",
        "secretsmanager:CreateSecret",
        "secretsmanager:DeleteSecret",
        "secretsmanager:CancelRotateSecret",
        "secretsmanager:ListSecretVersionIds",
        "secretsmanager:UpdateSecret",
        "secretsmanager:GetResourcePolicy",
        "secretsmanager:GetSecretValue",
        "secretsmanager:StopReplicationToReplica",
        "secretsmanager:ReplicateSecretToRegions",
        "secretsmanager:RestoreSecret",
        "secretsmanager:RotateSecret",
        "secretsmanager:UpdateSecretVersionStage",
        "secretsmanager:RemoveRegionsFromReplication"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:secretsmanager:arn:116981779666:secret:prod-secrts-joan",
      "Sid": "VisualEditor0"
    },
    {
      "Action": [
        "secretsmanager:GetRandomPassword",
        "secretsmanager:ListSecrets",
        "secretsmanager:BatchGetSecretValue"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "SQLQueryJoan-role-t6itxh6g"
}

resource "aws_iam_role_policy" "tfer--funcionEquipoDinamitaGeneratePOSData-role-ko96x407_s3_lambda_putobject_xideraloriginbucketdinamita" {
  name = "s3_lambda_putobject_xideraloriginbucketdinamita"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:PutObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::xideraloriginbucketdinamita/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "funcionEquipoDinamitaGeneratePOSData-role-ko96x407"
}

resource "aws_iam_role_policy" "tfer--glue_dany_test_s3_daniel_glue_test" {
  name = "s3_daniel_glue_test"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:PutObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::danielglue/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "glue_dany_test"
}

resource "aws_iam_role_policy" "tfer--glue_dany_test_s3_danielglue_test" {
  name = "s3_danielglue_test"

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

  role = "glue_dany_test"
}

resource "aws_iam_role_policy" "tfer--glue_full_entrecuentas_benjamin" {
  name = "entrecuentas_benjamin"

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
        "arn:aws:s3:::xideralbenjaminpractica",
        "arn:aws:s3:::xideralbenjaminpractica/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "glue_full"
}

resource "aws_iam_role_policy" "tfer--glue_role_mike_glue_createSeassin_mike" {
  name = "glue_createSeassin_mike"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "glue:CreateSession",
      "Effect": "Allow",
      "Resource": "arn:aws:glue:*:116981779666:session/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "glue_role_mike"
}

resource "aws_iam_role_policy" "tfer--glue_role_mike_glue_getsession_mike" {
  name = "glue_getsession_mike"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "glue:GetSession",
      "Effect": "Allow",
      "Resource": "arn:aws:glue:*:116981779666:session/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "glue_role_mike"
}

resource "aws_iam_role_policy" "tfer--glue_role_mike_glue_runstatement_mike" {
  name = "glue_runstatement_mike"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "glue:RunStatement",
      "Effect": "Allow",
      "Resource": "arn:aws:glue:*:116981779666:session/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "glue_role_mike"
}

resource "aws_iam_role_policy" "tfer--glue_role_mike_iam_passrole_mike" {
  name = "iam_passrole_mike"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "iam:PassRole",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "glue_role_mike"
}

resource "aws_iam_role_policy" "tfer--glue_role_mike_politicaentrefuentes" {
  name = "politicaentrefuentes"

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
        "arn:aws:s3:::peliculasmamh",
        "arn:aws:s3:::peliculasmamh/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "glue_role_mike"
}

resource "aws_iam_role_policy" "tfer--josue_sqlconnect-role-894z65zc_ec2_allow_josue_sqlconnect" {
  name = "ec2_allow_josue_sqlconnect"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:DescribeNetworkInterfaces",
        "ec2:CreateNetworkInterface",
        "ec2:DeleteNetworkInterface",
        "ec2:DescribeInstances",
        "ec2:AttachNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "josue_sqlconnect-role-894z65zc"
}

resource "aws_iam_role_policy" "tfer--lambda-inventario-cine-role-kyh8y33d_s3-get-object" {
  name = "s3-get-object"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::inventariocineeq2/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-inventario-cine-role-kyh8y33d"
}

resource "aws_iam_role_policy" "tfer--lambda-inventario-cine-role-kyh8y33d_s3-put-object" {
  name = "s3-put-object"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:PutObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::inventariocineeq2/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "lambda-inventario-cine-role-kyh8y33d"
}

resource "aws_iam_role_policy" "tfer--rol_db_lambda_jafet_policy_ec2_createnetworksinterface" {
  name = "policy_ec2_createnetworksinterface"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "ec2:CreateNetworkInterface",
        "ec2:DescribeNetworkInterfaces",
        "ec2:DeleteNetworkInterface"
      ],
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rol_db_lambda_jafet"
}

resource "aws_iam_role_policy" "tfer--rol_glue_entretodos_glue_getobject_putobject_listbucket_todos" {
  name = "glue_getobject_putobject_listbucket_todos"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetObject"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::*/*",
      "Sid": "VisualEditor0"
    },
    {
      "Action": "s3:ListBucket",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::*",
      "Sid": "VisualEditor1"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rol_glue_entretodos"
}

resource "aws_iam_role_policy" "tfer--rol_glue_ricardo_entrecuentas_ricardo" {
  name = "entrecuentas_ricardo"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:PutObject",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::xideralbenjaminpractica",
        "arn:aws:s3:::xideralbenjaminpractica/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rol_glue_ricardo"
}

resource "aws_iam_role_policy" "tfer--rol_glue_ricardo_s3_glue_getobject_aws-glue-assets-116981779666-us-east-1" {
  name = "s3_glue_getobject_aws-glue-assets-116981779666-us-east-1"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:GetObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::aws-glue-assets-116981779666-us-east-1/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rol_glue_ricardo"
}

resource "aws_iam_role_policy" "tfer--rol_glue_ricardo_s3_glue_listbucket_ricardoglue" {
  name = "s3_glue_listbucket_ricardoglue"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:ListBucket",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::ricardoglue",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rol_glue_ricardo"
}

resource "aws_iam_role_policy" "tfer--rol_glue_ricardo_s3_glue_putobject_ricardoglue" {
  name = "s3_glue_putobject_ricardoglue"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:PutObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::ricardoglue/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rol_glue_ricardo"
}

resource "aws_iam_role_policy" "tfer--rol_s3_danielglue_s3_putobject_glue_testdaniel" {
  name = "s3_putobject_glue_testdaniel"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:PutObject",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::danielglue/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rol_s3_danielglue"
}

resource "aws_iam_role_policy" "tfer--role_gluejosue_Iam_passrole_all" {
  name = "Iam_passrole_all"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "iam:PassRole",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_gluejosue"
}

resource "aws_iam_role_policy" "tfer--role_gluejosue_glue_createSession_josue" {
  name = "glue_createSession_josue"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "glue:CreateSession",
      "Effect": "Allow",
      "Resource": "arn:aws:glue:*:116981779666:session/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_gluejosue"
}

resource "aws_iam_role_policy" "tfer--role_gluejosue_glue_getsession_josue" {
  name = "glue_getsession_josue"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "glue:GetSession",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_gluejosue"
}

resource "aws_iam_role_policy" "tfer--role_gluejosue_glue_runStatement_all" {
  name = "glue_runStatement_all"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "glue:RunStatement",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_gluejosue"
}

resource "aws_iam_role_policy" "tfer--role_gluejosue_glue_tagresource_all" {
  name = "glue_tagresource_all"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "glue:TagResource",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_gluejosue"
}

resource "aws_iam_role_policy" "tfer--role_gluejosue_permission_s3_testacc" {
  name = "permission_s3_testacc"

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
        "arn:aws:s3:::xideraljosue",
        "arn:aws:s3:::xideraljosue/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_gluejosue"
}

resource "aws_iam_role_policy" "tfer--role_gluejosue_s3_getbucket_josue" {
  name = "s3_getbucket_josue"

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
        "arn:aws:s3:::josueglue",
        "arn:aws:s3:::josueglue/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_gluejosue"
}

resource "aws_iam_role_policy" "tfer--role_gluejosue_s3_listobject_josueglue" {
  name = "s3_listobject_josueglue"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:ListBucket",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::josueglue",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_gluejosue"
}

resource "aws_iam_role_policy" "tfer--role_gluejosue_s3_readbucket_glue" {
  name = "s3_readbucket_glue"

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
        "arn:aws:s3:::aws-glue-assets-116981779666-us-east-1/*",
        "arn:aws:s3:::aws-glue-assets-116981779666-us-east-1"
      ],
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_gluejosue"
}

resource "aws_iam_role_policy" "tfer--role_s3_oscarglue_s3_glue_ejercicioxideral" {
  name = "s3_glue_ejercicioxideral"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObjectAcl",
        "s3:GetObject",
        "s3:ListBucket"
      ],
      "Effect": "Allow",
      "Resource": [
        "arn:aws:s3:::ejerciciogluexideral",
        "arn:aws:s3:::ejerciciogluexideral/*"
      ],
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_s3_oscarglue"
}

resource "aws_iam_role_policy" "tfer--role_s3_oscarglue_s3_glue_get_object" {
  name = "s3_glue_get_object"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:GetObject",
        "s3:GetObjectVersion"
      ],
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::oscarglue/*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_s3_oscarglue"
}

resource "aws_iam_role_policy" "tfer--role_s3_oscarglue_s3_glue_list_bucket" {
  name = "s3_glue_list_bucket"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "s3:ListBucket",
      "Effect": "Allow",
      "Resource": "arn:aws:s3:::oscarglue",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_s3_oscarglue"
}

resource "aws_iam_role_policy" "tfer--role_s3_oscarglue_s3_glue_put_object_getobjectacl" {
  name = "s3_glue_put_object_getobjectacl"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "s3:PutObject",
        "s3:GetBucketAcl"
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

  role = "role_s3_oscarglue"
}

resource "aws_iam_role_policy" "tfer--role_s3_oscarglue_s3_remoto_dev_practica" {
  name = "s3_remoto_dev_practica"

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
        "arn:aws:s3:::xideraloscarpractica",
        "arn:aws:s3:::xideraloscarpractica/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_s3_oscarglue"
}

resource "aws_iam_role_policy" "tfer--role_s3_oscarglue_sts_glue_get_caller_identity" {
  name = "sts_glue_get_caller_identity"

  policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:GetCallerIdentity",
      "Effect": "Allow",
      "Resource": "*",
      "Sid": "VisualEditor0"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "role_s3_oscarglue"
}

resource "aws_iam_role_policy" "tfer--rolegluejoan_Glue_s3_test" {
  name = "Glue_s3_test"

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
        "arn:aws:s3:::cinexideralposjoan-analisis",
        "arn:aws:s3:::cinexideralposjoan-analisis/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rolegluejoan"
}

resource "aws_iam_role_policy" "tfer--rolejafetglue_callingdevbucket" {
  name = "callingdevbucket"

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
        "arn:aws:s3:::bucketdatajafet",
        "arn:aws:s3:::bucketdatajafet/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "rolejafetglue"
}

resource "aws_iam_role_policy" "tfer--s3_getAndPutAccess_entrecuentas_daniel" {
  name = "entrecuentas_daniel"

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
        "arn:aws:s3:::xideraldanielpractica",
        "arn:aws:s3:::xideraldanielpractica/*"
      ]
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  role = "s3_getAndPutAccess"
}
