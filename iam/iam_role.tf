resource "aws_iam_role" "tfer--AWSReservedSSO_AdministratorAccess_4c95242c31042239" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRoleWithSAML",
        "sts:TagSession"
      ],
      "Condition": {
        "StringEquals": {
          "SAML:aud": "https://signin.aws.amazon.com/saml"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::116981779666:saml-provider/AWSSSO_5ebbacb08c801c5f_DO_NOT_DELETE"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "43200"
  name                 = "AWSReservedSSO_AdministratorAccess_4c95242c31042239"
  path                 = "/aws-reserved/sso.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForAmazonSageMakerNotebooks" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sagemaker.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "AWS SageMaker Notebooks Service Linked Role"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonSageMakerNotebooksServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForAmazonSageMakerNotebooks"
  path                 = "/aws-service-role/sagemaker.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForDevOpsGuru" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "devops-guru.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "AWS service role used to execute actions on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonDevOpsGuruServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForDevOpsGuru"
  path                 = "/aws-service-role/devops-guru.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForOrganizations" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "organizations.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS Organizations to enable integration of other AWS services with Organizations."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForOrganizations"
  path                 = "/aws-service-role/organizations.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForRDS" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon RDS to manage AWS resources on your behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForRDS"
  path                 = "/aws-service-role/rds.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForRedshift" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Amazon Redshift to call AWS services on your behalf"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AmazonRedshiftServiceLinkedRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForRedshift"
  path                 = "/aws-service-role/redshift.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSSO" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "sso.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Service-linked role used by AWS SSO to manage AWS resources, including IAM roles, policies and SAML IdP on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSSO"
  path                 = "/aws-service-role/sso.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForSupport" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "support.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Enables resource access for AWS to provide billing, administrative and support services"
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForSupport"
  path                 = "/aws-service-role/support.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AWSServiceRoleForTrustedAdvisor" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "trustedadvisor.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Access for the AWS Trusted Advisor Service to help reduce cost, increase performance, and improve security of your AWS environment."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AWSServiceRoleForTrustedAdvisor"
  path                 = "/aws-service-role/trustedadvisor.amazonaws.com/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerDomainExecution" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRole",
        "sts:TagSession",
        "sts:SetContext"
      ],
      "Condition": {
        "ForAllValues:StringLike": {
          "aws:TagKeys": "datazone*"
        },
        "StringEquals": {
          "aws:SourceAccount": "116981779666"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "datazone.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/SageMakerStudioDomainExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerDomainExecution"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerDomainService" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "116981779666"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "datazone.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/SageMakerStudioDomainServiceRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerDomainService"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerManageAccess-us-east-1-dzd_45nw7full1qdpj" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "ArnEquals": {
          "aws:SourceArn": "arn:aws:datazone:us-east-1:116981779666:domain/dzd_45nw7full1qdpj"
        },
        "StringEquals": {
          "aws:SourceAccount": "116981779666"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "datazone.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AmazoneSageMakerManageAccessPolicy-45nw7full1qdpj", "arn:aws:iam::aws:policy/AmazonDataZoneSageMakerManageAccessRolePolicy", "arn:aws:iam::aws:policy/service-role/AmazonDataZoneGlueManageAccessRolePolicy", "arn:aws:iam::aws:policy/service-role/AmazonDataZoneRedshiftManageAccessRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerManageAccess-us-east-1-dzd_45nw7full1qdpj"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--AmazonSageMakerProvisioning-116981779666" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "116981779666"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "datazone.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/SageMakerStudioProjectProvisioningRolePolicy"]
  max_session_duration = "3600"
  name                 = "AmazonSageMakerProvisioning-116981779666"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--Amazon_EventBridge_Scheduler_LAMBDA_baa044e4f1" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Condition": {
        "StringEquals": {
          "aws:SourceAccount": "116981779666"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Service": "scheduler.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/Amazon-EventBridge-Scheduler-Execution-Policy-ea4c3d86-16da-4555-8827-eca9b2d7d7be"]
  max_session_duration = "3600"
  name                 = "Amazon_EventBridge_Scheduler_LAMBDA_baa044e4f1"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--RDSQueryFromLambdaRole_Ricardo" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-874e5450-b336-4954-a12b-eb2fec545a1d", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "RDSQueryFromLambdaRole_Ricardo"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--SQLQueryJoan-role-t6itxh6g" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "secrets_policy"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"secretsmanager:DescribeSecret\",\"secretsmanager:PutSecretValue\",\"secretsmanager:CreateSecret\",\"secretsmanager:DeleteSecret\",\"secretsmanager:CancelRotateSecret\",\"secretsmanager:ListSecretVersionIds\",\"secretsmanager:UpdateSecret\",\"secretsmanager:GetResourcePolicy\",\"secretsmanager:GetSecretValue\",\"secretsmanager:StopReplicationToReplica\",\"secretsmanager:ReplicateSecretToRegions\",\"secretsmanager:RestoreSecret\",\"secretsmanager:RotateSecret\",\"secretsmanager:UpdateSecretVersionStage\",\"secretsmanager:RemoveRegionsFromReplication\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:secretsmanager:arn:116981779666:secret:prod-secrts-joan\",\"Sid\":\"VisualEditor0\"},{\"Action\":[\"secretsmanager:GetRandomPassword\",\"secretsmanager:ListSecrets\",\"secretsmanager:BatchGetSecretValue\"],\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor1\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-4ab1553e-0874-4dc1-835a-73d214198b84"]
  max_session_duration = "3600"
  name                 = "SQLQueryJoan-role-t6itxh6g"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--SageMakerStudioQueryExecutionRole" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRole",
        "sts:SetContext"
      ],
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "lakeformation.amazonaws.com",
          "glue.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "The role used while running a query execution for federated connections."
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/SageMakerStudioQueryExecutionRolePolicy"]
  max_session_duration = "3600"
  name                 = "SageMakerStudioQueryExecutionRole"
  path                 = "/"
  permissions_boundary = "arn:aws:iam::aws:policy/SageMakerStudioProjectUserRolePermissionsBoundary"

  tags = {
    CreatedForUseWithSageMakerStudio  = "true"
    SageMakerStudioQueryExecutionRole = "true"
  }

  tags_all = {
    CreatedForUseWithSageMakerStudio  = "true"
    SageMakerStudioQueryExecutionRole = "true"
  }
}

resource "aws_iam_role" "tfer--cesar_db_rol" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Lambda functions to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonRDSFullAccess"]
  max_session_duration = "3600"
  name                 = "cesar_db_rol"
  path                 = "/"
}

resource "aws_iam_role" "tfer--cesar_glue_pyspark" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Glue to call AWS services on your behalf. "
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/cesarentrecuentas", "arn:aws:iam::116981779666:policy/cesarglue", "arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonRDSFullAccess"]
  max_session_duration = "3600"
  name                 = "cesar_glue_pyspark"
  path                 = "/"
}

resource "aws_iam_role" "tfer--datazone_emr_ec2_instance_role_6jw4wtluwzqx47_bjyrew4m9sx50n" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "datazone.amazonaws.com",
          "ec2.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Role for EMR EC2 instance"
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/datazone-emr-instance-profile-role-bjyrew4m9sx50n-dev"]
  max_session_duration = "3600"
  name                 = "datazone_emr_ec2_instance_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
  path                 = "/"
  permissions_boundary = "arn:aws:iam::aws:policy/SageMakerStudioProjectUserRolePermissionsBoundary"

  tags = {
    AmazonDataZoneBlueprint                  = "Tooling"
    AmazonDataZoneDomain                     = "dzd_45nw7full1qdpj"
    AmazonDataZoneEnvironment                = "bjyrew4m9sx50n"
    AmazonDataZoneProject                    = "6jw4wtluwzqx47"
    AmazonDataZoneScopeName                  = "dev"
    DomainBucketName                         = "amazon-sagemaker-116981779666-us-east-1-dba277b742b6"
    KmsKeyId                                 = ""
    for-use-with-amazon-emr-managed-policies = "true"
  }

  tags_all = {
    AmazonDataZoneBlueprint                  = "Tooling"
    AmazonDataZoneDomain                     = "dzd_45nw7full1qdpj"
    AmazonDataZoneEnvironment                = "bjyrew4m9sx50n"
    AmazonDataZoneProject                    = "6jw4wtluwzqx47"
    AmazonDataZoneScopeName                  = "dev"
    DomainBucketName                         = "amazon-sagemaker-116981779666-us-east-1-dba277b742b6"
    KmsKeyId                                 = ""
    for-use-with-amazon-emr-managed-policies = "true"
  }
}

resource "aws_iam_role" "tfer--datazone_emr_service_role_6jw4wtluwzqx47_bjyrew4m9sx50n" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "elasticmapreduce.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Role for EMR to manage cluster lifecycle"
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/datazone-emr-pass-role-to-ec2-bjyrew4m9sx50n-dev", "arn:aws:iam::aws:policy/service-role/AmazonEMRServicePolicy_v2"]
  max_session_duration = "3600"
  name                 = "datazone_emr_service_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
  path                 = "/"
  permissions_boundary = "arn:aws:iam::aws:policy/SageMakerStudioProjectUserRolePermissionsBoundary"

  tags = {
    AmazonDataZoneBlueprint                  = "Tooling"
    AmazonDataZoneDomain                     = "dzd_45nw7full1qdpj"
    AmazonDataZoneEnvironment                = "bjyrew4m9sx50n"
    AmazonDataZoneProject                    = "6jw4wtluwzqx47"
    AmazonDataZoneScopeName                  = "dev"
    KmsKeyId                                 = ""
    for-use-with-amazon-emr-managed-policies = "true"
  }

  tags_all = {
    AmazonDataZoneBlueprint                  = "Tooling"
    AmazonDataZoneDomain                     = "dzd_45nw7full1qdpj"
    AmazonDataZoneEnvironment                = "bjyrew4m9sx50n"
    AmazonDataZoneProject                    = "6jw4wtluwzqx47"
    AmazonDataZoneScopeName                  = "dev"
    KmsKeyId                                 = ""
    for-use-with-amazon-emr-managed-policies = "true"
  }
}

resource "aws_iam_role" "tfer--datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": [
        "sts:AssumeRole",
        "sts:TagSession",
        "sts:SetContext",
        "sts:SetSourceIdentity"
      ],
      "Effect": "Allow",
      "Principal": {
        "AWS": [
          "arn:aws:iam::116981779666:role/datazone_emr_ec2_instance_role_6jw4wtluwzqx47_bjyrew4m9sx50n",
          "arn:aws:iam::116981779666:role/service-role/AmazonSageMakerProvisioning-116981779666"
        ],
        "Service": [
          "airflow.amazonaws.com",
          "glue.amazonaws.com",
          "redshift.amazonaws.com",
          "lakeformation.amazonaws.com",
          "airflow-env.amazonaws.com",
          "auth.datazone.amazonaws.com",
          "emr-serverless.amazonaws.com",
          "redshift-serverless.amazonaws.com",
          "datazone.amazonaws.com",
          "lambda.amazonaws.com",
          "sagemaker.amazonaws.com"
        ]
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "User role for all environments and tools."
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/connector-manage-access-policy-bjyrew4m9sx50n-dev", "arn:aws:iam::116981779666:policy/datazone-ml-resources-policy-bjyrew4m9sx50n", "arn:aws:iam::aws:policy/SageMakerStudioProjectRoleMachineLearningPolicy", "arn:aws:iam::aws:policy/SageMakerStudioProjectUserRolePolicy"]
  max_session_duration = "3600"
  name                 = "datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
  path                 = "/"
  permissions_boundary = "arn:aws:iam::aws:policy/SageMakerStudioProjectUserRolePermissionsBoundary"

  tags = {
    AmazonDataZoneBlueprint               = "Tooling"
    AmazonDataZoneDomain                  = "dzd_45nw7full1qdpj"
    AmazonDataZoneEnvironment             = "bjyrew4m9sx50n"
    AmazonDataZoneProject                 = "6jw4wtluwzqx47"
    AmazonDataZoneScopeName               = "dev"
    DomainBucketName                      = "amazon-sagemaker-116981779666-us-east-1-dba277b742b6"
    EnableAmazonBedrockIDEPermissions     = "true"
    EnableGlueWorkloadsPermissions        = "true"
    EnableSageMakerMLWorkloadsPermissions = "true"
    KmsKeyId                              = ""
    LogGroupName                          = "datazone-6jw4wtluwzqx47-dev"
    RedshiftDbRoles                       = "datazone_env_5q9w3q4fuymzdz"
    RedshiftDbUser                        = "user-project@6jw4wtluwzqx47"
    RoleName                              = "datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
    VpcId                                 = "vpc-04e1df50e3aeb3189"
    vpcArn                                = "arn:aws:ec2:us-east-1:116981779666:vpc/vpc-04e1df50e3aeb3189"
  }

  tags_all = {
    AmazonDataZoneBlueprint               = "Tooling"
    AmazonDataZoneDomain                  = "dzd_45nw7full1qdpj"
    AmazonDataZoneEnvironment             = "bjyrew4m9sx50n"
    AmazonDataZoneProject                 = "6jw4wtluwzqx47"
    AmazonDataZoneScopeName               = "dev"
    DomainBucketName                      = "amazon-sagemaker-116981779666-us-east-1-dba277b742b6"
    EnableAmazonBedrockIDEPermissions     = "true"
    EnableGlueWorkloadsPermissions        = "true"
    EnableSageMakerMLWorkloadsPermissions = "true"
    KmsKeyId                              = ""
    LogGroupName                          = "datazone-6jw4wtluwzqx47-dev"
    RedshiftDbRoles                       = "datazone_env_5q9w3q4fuymzdz"
    RedshiftDbUser                        = "user-project@6jw4wtluwzqx47"
    RoleName                              = "datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
    VpcId                                 = "vpc-04e1df50e3aeb3189"
    vpcArn                                = "arn:aws:ec2:us-east-1:116981779666:vpc/vpc-04e1df50e3aeb3189"
  }
}

resource "aws_iam_role" "tfer--dbconnectiondaniel-role-bv0ytiiw" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-bb2ab999-cf78-4aea-925f-a729833a1726", "arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "dbconnectiondaniel-role-bv0ytiiw"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--ec2_rol_s3" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "ec2_rol_s3"
  path                 = "/"

  tags = {
    envornment = "test"
  }

  tags_all = {
    envornment = "test"
  }
}

resource "aws_iam_role" "tfer--ec2_rol_s3_jafet" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "ec2_rol_s3_jafet"
  path                 = "/"

  tags = {
    environment = "test"
  }

  tags_all = {
    environment = "test"
  }
}

resource "aws_iam_role" "tfer--ec2_rol_s3_mike" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "ec2_rol_s3_mike"
  path                 = "/"

  tags = {
    enviroment = "test"
  }

  tags_all = {
    enviroment = "test"
  }
}

resource "aws_iam_role" "tfer--ec2_rol_s3_ricardo" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "ec2_rol_s3_ricardo"
  path                 = "/"

  tags = {
    environment = "test"
  }

  tags_all = {
    environment = "test"
  }
}

resource "aws_iam_role" "tfer--ec2_role_s3_joan" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "ec2_role_s3_joan"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ex2_rol_s3_cesar" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "ex2_rol_s3_cesar"
  path                 = "/"
}

resource "aws_iam_role" "tfer--funcionEquipoDinamitaGeneratePOSData-role-ko96x407" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "s3_lambda_putobject_xideraloriginbucketdinamita"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"s3:PutObject\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::xideraloriginbucketdinamita/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-d119f234-b47c-439d-a39b-1f3d3f317114"]
  max_session_duration = "3600"
  name                 = "funcionEquipoDinamitaGeneratePOSData-role-ko96x407"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--glue_dany_test" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows Glue to call AWS services on your behalf. "

  inline_policy {
    name   = "s3_daniel_glue_test"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"s3:PutObject\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::danielglue/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "s3_danielglue_test"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::danielglue/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/s3_glue_test_daniel"]
  max_session_duration = "3600"
  name                 = "glue_dany_test"
  path                 = "/"
}

resource "aws_iam_role" "tfer--glue_full" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows Glue to call AWS services on your behalf. "

  inline_policy {
    name   = "entrecuentas_benjamin"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::xideralbenjaminpractica\",\"arn:aws:s3:::xideralbenjaminpractica/*\"]}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonRDSFullAccess"]
  max_session_duration = "3600"
  name                 = "glue_full"
  path                 = "/"

  tags = {
    environment = "prod"
  }

  tags_all = {
    environment = "prod"
  }
}

resource "aws_iam_role" "tfer--glue_role_mike" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows Glue to call AWS services on your behalf. "

  inline_policy {
    name   = "glue_createSeassin_mike"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"glue:CreateSession\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:glue:*:116981779666:session/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "glue_getsession_mike"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"glue:GetSession\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:glue:*:116981779666:session/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "glue_runstatement_mike"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"glue:RunStatement\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:glue:*:116981779666:session/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "iam_passrole_mike"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"iam:PassRole\",\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "politicaentrefuentes"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::peliculasmamh\",\"arn:aws:s3:::peliculasmamh/*\"]}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "7200"
  name                 = "glue_role_mike"
  path                 = "/"
}

resource "aws_iam_role" "tfer--gluerolecesar" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Glue to call AWS services on your behalf. "
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/cesars3gluepolicy"]
  max_session_duration = "3600"
  name                 = "gluerolecesar"
  path                 = "/"
}

resource "aws_iam_role" "tfer--josue_sqlconnect-role-894z65zc" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "ec2_allow_josue_sqlconnect"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:DescribeNetworkInterfaces\",\"ec2:CreateNetworkInterface\",\"ec2:DeleteNetworkInterface\",\"ec2:DescribeInstances\",\"ec2:AttachNetworkInterface\"],\"Effect\":\"Allow\",\"Resource\":\"*\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-8eadd90a-b0ed-4d2e-9aba-abe956364ede"]
  max_session_duration = "3600"
  name                 = "josue_sqlconnect-role-894z65zc"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--lambda-inventario-cine-role-kyh8y33d" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "s3-get-object"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::inventariocineeq2/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "s3-put-object"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"s3:PutObject\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::inventariocineeq2/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-b0b5ba20-dc33-4130-a5b0-c2f8953bec56"]
  max_session_duration = "3600"
  name                 = "lambda-inventario-cine-role-kyh8y33d"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--lambda_db_cesar-role-x6bff0kp" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-0d88a53d-b5f2-4722-af1a-1b7f1d792e0e"]
  max_session_duration = "3600"
  name                 = "lambda_db_cesar-role-x6bff0kp"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--oscar_ec2_role_s3" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "ec2.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows EC2 instances to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "oscar_ec2_role_s3"
  path                 = "/"

  tags = {
    env = "test"
  }

  tags_all = {
    env = "test"
  }
}

resource "aws_iam_role" "tfer--oscar_lambda_db-1738255516616" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": "AWSLambdaVPCAccessExecutionRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "oscar_lambda_db-1738255516616"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--oscar_lambda_db-role-mtg6a181" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-8862cee0-3521-4509-88a5-db560cf07fba"]
  max_session_duration = "3600"
  name                 = "oscar_lambda_db-role-mtg6a181"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--oscar_lambda_db_select-1738254720162" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": "AWSLambdaVPCAccessExecutionRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaSQSQueueExecutionRole", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "oscar_lambda_db_select-1738254720162"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--oscar_lambda_select_db-1738255738420" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": "AWSLambdaVPCAccessExecutionRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "oscar_lambda_select_db-1738255738420"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--rds-monitoring-role" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "monitoring.rds.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"]
  max_session_duration = "3600"
  name                 = "rds-monitoring-role"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rds-proxy-role-1738254720162" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows RDS Proxy access to database connection credentials"
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738254720162"]
  max_session_duration = "3600"
  name                 = "rds-proxy-role-1738254720162"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--rds-proxy-role-1738254851779" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows RDS Proxy access to database connection credentials"
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738254851779"]
  max_session_duration = "3600"
  name                 = "rds-proxy-role-1738254851779"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--rds-proxy-role-1738255123498" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows RDS Proxy access to database connection credentials"
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738255123498"]
  max_session_duration = "3600"
  name                 = "rds-proxy-role-1738255123498"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--rds-proxy-role-1738255236081" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows RDS Proxy access to database connection credentials"
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738255236081"]
  max_session_duration = "3600"
  name                 = "rds-proxy-role-1738255236081"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--rds-proxy-role-1738255516616" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows RDS Proxy access to database connection credentials"
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738255516616"]
  max_session_duration = "3600"
  name                 = "rds-proxy-role-1738255516616"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--rds-proxy-role-1738255738420" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows RDS Proxy access to database connection credentials"
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738255738420"]
  max_session_duration = "3600"
  name                 = "rds-proxy-role-1738255738420"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--rds-proxy-role-1738256332658" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows RDS Proxy access to database connection credentials"
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738256332658"]
  max_session_duration = "3600"
  name                 = "rds-proxy-role-1738256332658"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--rds-proxy-role-1738256636827" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows RDS Proxy access to database connection credentials"
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738256636827"]
  max_session_duration = "3600"
  name                 = "rds-proxy-role-1738256636827"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--rds-proxy-role-1738256955021" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows RDS Proxy access to database connection credentials"
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738256955021"]
  max_session_duration = "3600"
  name                 = "rds-proxy-role-1738256955021"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--readtest-role-dli0ri28" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-26e3f0e6-4d68-48f5-8e8b-3b737e9b1722"]
  max_session_duration = "3600"
  name                 = "readtest-role-dli0ri28"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--redshift_daniel_accesobuckets" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "redshift_daniel_accesobuckets"
  path                 = "/"
}

resource "aws_iam_role" "tfer--redshift_s3_mike" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "redshift_s3_mike"
  path                 = "/"
}

resource "aws_iam_role" "tfer--redshift_s3_oscar" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "redshift_s3_oscar"
  path                 = "/"
}

resource "aws_iam_role" "tfer--ricardo_sqlconnect-role-8el2605t" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-af38241d-1b16-4f60-ab82-ee7019819d09"]
  max_session_duration = "3600"
  name                 = "ricardo_sqlconnect-role-8el2605t"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--rol_db_lambda_jafet" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  inline_policy {
    name   = "policy_ec2_createnetworksinterface"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"ec2:CreateNetworkInterface\",\"ec2:DescribeNetworkInterfaces\",\"ec2:DeleteNetworkInterface\"],\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-e69a771f-c562-411a-b943-544bf393d96a", "arn:aws:iam::aws:policy/AmazonRDSDataFullAccess", "arn:aws:iam::aws:policy/AmazonRDSFullAccess"]
  max_session_duration = "3600"
  name                 = "rol_db_lambda_jafet"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--rol_glue_entretodos" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Rol de Glue que se conecta a la cuenta de todos para la actividad S2D2."

  inline_policy {
    name   = "glue_getobject_putobject_listbucket_todos"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetObject\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::*/*\",\"Sid\":\"VisualEditor0\"},{\"Action\":\"s3:ListBucket\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::*\",\"Sid\":\"VisualEditor1\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonRDSFullAccess"]
  max_session_duration = "3600"
  name                 = "rol_glue_entretodos"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rol_glue_ricardo" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows Glue to call AWS services on your behalf. "

  inline_policy {
    name   = "entrecuentas_ricardo"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:PutObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::xideralbenjaminpractica\",\"arn:aws:s3:::xideralbenjaminpractica/*\"]}]}"
  }

  inline_policy {
    name   = "s3_glue_getobject_aws-glue-assets-116981779666-us-east-1"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"s3:GetObject\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::aws-glue-assets-116981779666-us-east-1/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "s3_glue_listbucket_ricardoglue"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"s3:ListBucket\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::ricardoglue\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "s3_glue_putobject_ricardoglue"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"s3:PutObject\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::ricardoglue/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/s3_glue_getobject_ricardoglue", "arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonRDSFullAccess"]
  max_session_duration = "3600"
  name                 = "rol_glue_ricardo"
  path                 = "/"

  tags = {
    environment = "prd"
  }

  tags_all = {
    environment = "prd"
  }
}

resource "aws_iam_role" "tfer--rol_rds_s3" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": [
          "directoryservice.rds.eu-south-1.amazonaws.com",
          "directoryservice.rds.me-central-1.amazonaws.com",
          "directoryservice.rds.af-south-1.amazonaws.com",
          "rds.amazonaws.com",
          "directoryservice.rds.ap-south-2.amazonaws.com",
          "directoryservice.rds.ap-east-1.amazonaws.com",
          "directoryservice.rds.amazonaws.com",
          "directoryservice.rds.ap-southeast-3.amazonaws.com",
          "directoryservice.rds.il-central-1.amazonaws.com",
          "directoryservice.rds.ap-southeast-4.amazonaws.com",
          "directoryservice.rds.eu-south-2.amazonaws.com",
          "directoryservice.rds.eu-central-2.amazonaws.com",
          "directoryservice.rds.me-south-1.amazonaws.com"
        ]
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows RDS to manage Directory Service resources on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AmazonRDSDirectoryServiceAccess"]
  max_session_duration = "3600"
  name                 = "rol_rds_s3"
  path                 = "/"
  permissions_boundary = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

resource "aws_iam_role" "tfer--rol_rds_s3_joan" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows you to grant RDS access to additional resources on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "rol_rds_s3_joan"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rol_redshift_jafet" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "rol_redshift_jafet"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rol_s3_danielglue" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "s3.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows S3 to call AWS services on your behalf."

  inline_policy {
    name   = "s3_putobject_glue_testdaniel"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"s3:PutObject\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::danielglue/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/s3_glue_test_daniel"]
  max_session_duration = "3600"
  name                 = "rol_s3_danielglue"
  path                 = "/"

  tags = {
    env = "prd"
  }

  tags_all = {
    env = "prd"
  }
}

resource "aws_iam_role" "tfer--rol_s3_redshift_benjamin" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "rol_s3_redshift_benjamin"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rol_s3_redshift_ricardo" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "redshift.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows Redshift clusters to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "rol_s3_redshift_ricardo"
  path                 = "/"
}

resource "aws_iam_role" "tfer--role_github_actions" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRoleWithWebIdentity",
      "Condition": {
        "StringEquals": {
          "token.actions.githubusercontent.com:aud": "sts.amazonaws.com"
        },
        "StringLike": {
          "token.actions.githubusercontent.com:sub": "repo:cesarAndramart/*"
        }
      },
      "Effect": "Allow",
      "Principal": {
        "Federated": "arn:aws:iam::116981779666:oidc-provider/token.actions.githubusercontent.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/ec2_all_policy"]
  max_session_duration = "3600"
  name                 = "role_github_actions"
  path                 = "/"
}

resource "aws_iam_role" "tfer--role_gluejosue" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows Glue to call AWS services on your behalf. "

  inline_policy {
    name   = "Iam_passrole_all"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"iam:PassRole\",\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "glue_createSession_josue"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"glue:CreateSession\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:glue:*:116981779666:session/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "glue_getsession_josue"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"glue:GetSession\",\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "glue_runStatement_all"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"glue:RunStatement\",\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "glue_tagresource_all"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"glue:TagResource\",\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "permission_s3_testacc"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::xideraljosue\",\"arn:aws:s3:::xideraljosue/*\"]}]}"
  }

  inline_policy {
    name   = "s3_getbucket_josue"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::josueglue\",\"arn:aws:s3:::josueglue/*\"]}]}"
  }

  inline_policy {
    name   = "s3_listobject_josueglue"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"s3:ListBucket\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::josueglue\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "s3_readbucket_glue"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::aws-glue-assets-116981779666-us-east-1/*\",\"arn:aws:s3:::aws-glue-assets-116981779666-us-east-1\"],\"Sid\":\"VisualEditor0\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/s3_glue_test_benjamin"]
  max_session_duration = "3600"
  name                 = "role_gluejosue"
  path                 = "/"
}

resource "aws_iam_role" "tfer--role_s3_joan" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "s3.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows S3 to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/s3_glue_test_joan"]
  max_session_duration = "3600"
  name                 = "role_s3_joan"
  path                 = "/"
}

resource "aws_iam_role" "tfer--role_s3_oscarglue" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows Glue to call AWS services on your behalf. "

  inline_policy {
    name   = "s3_glue_ejercicioxideral"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObjectAcl\",\"s3:GetObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::ejerciciogluexideral\",\"arn:aws:s3:::ejerciciogluexideral/*\"],\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "s3_glue_get_object"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:GetObjectVersion\"],\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::oscarglue/*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "s3_glue_list_bucket"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"s3:ListBucket\",\"Effect\":\"Allow\",\"Resource\":\"arn:aws:s3:::oscarglue\",\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "s3_glue_put_object_getobjectacl"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:PutObject\",\"s3:GetBucketAcl\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::oscarglue/*\",\"arn:aws:s3:::oscarglue\"],\"Sid\":\"VisualEditor0\"}]}"
  }

  inline_policy {
    name   = "s3_remoto_dev_practica"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::xideraloscarpractica\",\"arn:aws:s3:::xideraloscarpractica/*\"]}]}"
  }

  inline_policy {
    name   = "sts_glue_get_caller_identity"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":\"sts:GetCallerIdentity\",\"Effect\":\"Allow\",\"Resource\":\"*\",\"Sid\":\"VisualEditor0\"}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "role_s3_oscarglue"
  path                 = "/"

  tags = {
    env = "prod"
  }

  tags_all = {
    env = "prod"
  }
}

resource "aws_iam_role" "tfer--role_s3_rds_backup" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "rds.amazonaws.com"
      },
      "Sid": ""
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows you to grant RDS access to additional resources on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonS3FullAccess"]
  max_session_duration = "3600"
  name                 = "role_s3_rds_backup"
  path                 = "/"
}

resource "aws_iam_role" "tfer--role_s3_rds_cesar" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "s3.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description          = "Allows S3 to call AWS services on your behalf."
  managed_policy_arns  = ["arn:aws:iam::aws:policy/AmazonRDSFullAccess"]
  max_session_duration = "3600"
  name                 = "role_s3_rds_cesar"
  path                 = "/"
}

resource "aws_iam_role" "tfer--rolegluejoan" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows Glue to call AWS services on your behalf. "

  inline_policy {
    name   = "Glue_s3_test"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::cinexideralposjoan-analisis\",\"arn:aws:s3:::cinexideralposjoan-analisis/*\"]}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/s3_glue_test_joan", "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess", "arn:aws:iam::aws:policy/AWSGlueSchemaRegistryFullAccess", "arn:aws:iam::aws:policy/AdministratorAccess", "arn:aws:iam::aws:policy/AmazonRDSFullAccess", "arn:aws:iam::aws:policy/AmazonS3FullAccess", "arn:aws:iam::aws:policy/service-role/AWSGlueServiceNotebookRole", "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"]
  max_session_duration = "3600"
  name                 = "rolegluejoan"
  path                 = "/"

  tags = {
    enviroment = "prd"
  }

  tags_all = {
    enviroment = "prd"
  }
}

resource "aws_iam_role" "tfer--rolejafetglue" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows Glue to call AWS services on your behalf. "

  inline_policy {
    name   = "callingdevbucket"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::bucketdatajafet\",\"arn:aws:s3:::bucketdatajafet/*\"]}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/s3_forglue_Jafet", "arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "rolejafetglue"
  path                 = "/"

  tags = {
    environment = "pdr"
  }

  tags_all = {
    environment = "pdr"
  }
}

resource "aws_iam_role" "tfer--s3_getAndPutAccess" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "glue.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  description = "Allows Glue to call AWS services on your behalf. "

  inline_policy {
    name   = "entrecuentas_daniel"
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Action\":[\"s3:GetObject\",\"s3:ListBucket\"],\"Effect\":\"Allow\",\"Resource\":[\"arn:aws:s3:::xideraldanielpractica\",\"arn:aws:s3:::xideraldanielpractica/*\"]}]}"
  }

  managed_policy_arns  = ["arn:aws:iam::aws:policy/AdministratorAccess"]
  max_session_duration = "3600"
  name                 = "s3_getAndPutAccess"
  path                 = "/"
}

resource "aws_iam_role" "tfer--slq_lambda_extact_mamh-1738255236081" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": "AWSLambdaVPCAccessExecutionRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "slq_lambda_extact_mamh-1738255236081"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--sql-function-role-ee2o9p8f" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-3f3e04ba-ba47-465f-b95e-af39bfa061c7"]
  max_session_duration = "3600"
  name                 = "sql-function-role-ee2o9p8f"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--sql_extract_mamh-1738254851779" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Sid": "AWSLambdaVPCAccessExecutionRole"
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "sql_extract_mamh-1738254851779"
  path                 = "/service-role/"
}

resource "aws_iam_role" "tfer--sql_lambda_mamh-role-63ti5fll" {
  assume_role_policy = <<POLICY
{
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      }
    }
  ],
  "Version": "2012-10-17"
}
POLICY

  managed_policy_arns  = ["arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-09e6c181-9d33-4497-b372-19e51af0bc3a", "arn:aws:iam::aws:policy/AmazonEC2FullAccess", "arn:aws:iam::aws:policy/AmazonRDSFullAccess", "arn:aws:iam::aws:policy/AmazonVPCFullAccess", "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"]
  max_session_duration = "3600"
  name                 = "sql_lambda_mamh-role-63ti5fll"
  path                 = "/service-role/"
}
