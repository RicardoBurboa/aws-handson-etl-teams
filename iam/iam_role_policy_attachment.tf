resource "aws_iam_role_policy_attachment" "tfer--AWSReservedSSO_AdministratorAccess_4c95242c31042239_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "AWSReservedSSO_AdministratorAccess_4c95242c31042239"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForAmazonSageMakerNotebooks_AmazonSageMakerNotebooksServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonSageMakerNotebooksServiceRolePolicy"
  role       = "AWSServiceRoleForAmazonSageMakerNotebooks"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForDevOpsGuru_AmazonDevOpsGuruServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonDevOpsGuruServiceRolePolicy"
  role       = "AWSServiceRoleForDevOpsGuru"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForOrganizations_AWSOrganizationsServiceTrustPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSOrganizationsServiceTrustPolicy"
  role       = "AWSServiceRoleForOrganizations"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForRDS_AmazonRDSServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRDSServiceRolePolicy"
  role       = "AWSServiceRoleForRDS"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForRedshift_AmazonRedshiftServiceLinkedRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AmazonRedshiftServiceLinkedRolePolicy"
  role       = "AWSServiceRoleForRedshift"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSSO_AWSSSOServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSSOServiceRolePolicy"
  role       = "AWSServiceRoleForSSO"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForSupport_AWSSupportServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSSupportServiceRolePolicy"
  role       = "AWSServiceRoleForSupport"
}

resource "aws_iam_role_policy_attachment" "tfer--AWSServiceRoleForTrustedAdvisor_AWSTrustedAdvisorServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/aws-service-role/AWSTrustedAdvisorServiceRolePolicy"
  role       = "AWSServiceRoleForTrustedAdvisor"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerDomainExecution_SageMakerStudioDomainExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/SageMakerStudioDomainExecutionRolePolicy"
  role       = "AmazonSageMakerDomainExecution"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerDomainService_SageMakerStudioDomainServiceRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/SageMakerStudioDomainServiceRolePolicy"
  role       = "AmazonSageMakerDomainService"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerManageAccess-us-east-1-dzd_45nw7full1qdpj_AmazonDataZoneGlueManageAccessRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonDataZoneGlueManageAccessRolePolicy"
  role       = "AmazonSageMakerManageAccess-us-east-1-dzd_45nw7full1qdpj"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerManageAccess-us-east-1-dzd_45nw7full1qdpj_AmazonDataZoneRedshiftManageAccessRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonDataZoneRedshiftManageAccessRolePolicy"
  role       = "AmazonSageMakerManageAccess-us-east-1-dzd_45nw7full1qdpj"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerManageAccess-us-east-1-dzd_45nw7full1qdpj_AmazonDataZoneSageMakerManageAccessRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonDataZoneSageMakerManageAccessRolePolicy"
  role       = "AmazonSageMakerManageAccess-us-east-1-dzd_45nw7full1qdpj"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerManageAccess-us-east-1-dzd_45nw7full1qdpj_AmazoneSageMakerManageAccessPolicy-45nw7full1qdpj" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AmazoneSageMakerManageAccessPolicy-45nw7full1qdpj"
  role       = "AmazonSageMakerManageAccess-us-east-1-dzd_45nw7full1qdpj"
}

resource "aws_iam_role_policy_attachment" "tfer--AmazonSageMakerProvisioning-116981779666_SageMakerStudioProjectProvisioningRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/SageMakerStudioProjectProvisioningRolePolicy"
  role       = "AmazonSageMakerProvisioning-116981779666"
}

resource "aws_iam_role_policy_attachment" "tfer--Amazon_EventBridge_Scheduler_LAMBDA_baa044e4f1_Amazon-EventBridge-Scheduler-Execution-Policy-ea4c3d86-16da-4555-8827-eca9b2d7d7be" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/Amazon-EventBridge-Scheduler-Execution-Policy-ea4c3d86-16da-4555-8827-eca9b2d7d7be"
  role       = "Amazon_EventBridge_Scheduler_LAMBDA_baa044e4f1"
}

resource "aws_iam_role_policy_attachment" "tfer--RDSQueryFromLambdaRole_Ricardo_AWSLambdaBasicExecutionRole-874e5450-b336-4954-a12b-eb2fec545a1d" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-874e5450-b336-4954-a12b-eb2fec545a1d"
  role       = "RDSQueryFromLambdaRole_Ricardo"
}

resource "aws_iam_role_policy_attachment" "tfer--RDSQueryFromLambdaRole_Ricardo_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "RDSQueryFromLambdaRole_Ricardo"
}

resource "aws_iam_role_policy_attachment" "tfer--SQLQueryJoan-role-t6itxh6g_AWSLambdaBasicExecutionRole-4ab1553e-0874-4dc1-835a-73d214198b84" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-4ab1553e-0874-4dc1-835a-73d214198b84"
  role       = "SQLQueryJoan-role-t6itxh6g"
}

resource "aws_iam_role_policy_attachment" "tfer--SageMakerStudioQueryExecutionRole_SageMakerStudioQueryExecutionRolePolicy" {
  policy_arn = "arn:aws:iam::116981779666:policy/SageMakerStudioQueryExecutionRolePolicy"
  role       = "SageMakerStudioQueryExecutionRole"
}

resource "aws_iam_role_policy_attachment" "tfer--cesar_db_rol_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "cesar_db_rol"
}

resource "aws_iam_role_policy_attachment" "tfer--cesar_db_rol_AmazonRDSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role       = "cesar_db_rol"
}

resource "aws_iam_role_policy_attachment" "tfer--cesar_glue_pyspark_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "cesar_glue_pyspark"
}

resource "aws_iam_role_policy_attachment" "tfer--cesar_glue_pyspark_AmazonRDSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role       = "cesar_glue_pyspark"
}

resource "aws_iam_role_policy_attachment" "tfer--cesar_glue_pyspark_cesarentrecuentas" {
  policy_arn = "arn:aws:iam::116981779666:policy/cesarentrecuentas"
  role       = "cesar_glue_pyspark"
}

resource "aws_iam_role_policy_attachment" "tfer--cesar_glue_pyspark_cesarglue" {
  policy_arn = "arn:aws:iam::116981779666:policy/cesarglue"
  role       = "cesar_glue_pyspark"
}

resource "aws_iam_role_policy_attachment" "tfer--datazone_emr_ec2_instance_role_6jw4wtluwzqx47_bjyrew4m9sx50n_datazone-emr-instance-profile-role-bjyrew4m9sx50n-dev" {
  policy_arn = "arn:aws:iam::116981779666:policy/datazone-emr-instance-profile-role-bjyrew4m9sx50n-dev"
  role       = "datazone_emr_ec2_instance_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
}

resource "aws_iam_role_policy_attachment" "tfer--datazone_emr_service_role_6jw4wtluwzqx47_bjyrew4m9sx50n_AmazonEMRServicePolicy_v2" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonEMRServicePolicy_v2"
  role       = "datazone_emr_service_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
}

resource "aws_iam_role_policy_attachment" "tfer--datazone_emr_service_role_6jw4wtluwzqx47_bjyrew4m9sx50n_datazone-emr-pass-role-to-ec2-bjyrew4m9sx50n-dev" {
  policy_arn = "arn:aws:iam::116981779666:policy/datazone-emr-pass-role-to-ec2-bjyrew4m9sx50n-dev"
  role       = "datazone_emr_service_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
}

resource "aws_iam_role_policy_attachment" "tfer--datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n_SageMakerStudioProjectRoleMachineLearningPolicy" {
  policy_arn = "arn:aws:iam::aws:policy/SageMakerStudioProjectRoleMachineLearningPolicy"
  role       = "datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
}

resource "aws_iam_role_policy_attachment" "tfer--datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n_SageMakerStudioProjectUserRolePolicy" {
  policy_arn = "arn:aws:iam::aws:policy/SageMakerStudioProjectUserRolePolicy"
  role       = "datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
}

resource "aws_iam_role_policy_attachment" "tfer--datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n_connector-manage-access-policy-bjyrew4m9sx50n-dev" {
  policy_arn = "arn:aws:iam::116981779666:policy/connector-manage-access-policy-bjyrew4m9sx50n-dev"
  role       = "datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
}

resource "aws_iam_role_policy_attachment" "tfer--datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n_datazone-ml-resources-policy-bjyrew4m9sx50n" {
  policy_arn = "arn:aws:iam::116981779666:policy/datazone-ml-resources-policy-bjyrew4m9sx50n"
  role       = "datazone_usr_role_6jw4wtluwzqx47_bjyrew4m9sx50n"
}

resource "aws_iam_role_policy_attachment" "tfer--dbconnectiondaniel-role-bv0ytiiw_AWSLambdaBasicExecutionRole-bb2ab999-cf78-4aea-925f-a729833a1726" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-bb2ab999-cf78-4aea-925f-a729833a1726"
  role       = "dbconnectiondaniel-role-bv0ytiiw"
}

resource "aws_iam_role_policy_attachment" "tfer--dbconnectiondaniel-role-bv0ytiiw_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "dbconnectiondaniel-role-bv0ytiiw"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2_rol_s3_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "ec2_rol_s3"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2_rol_s3_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "ec2_rol_s3"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2_rol_s3_jafet_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "ec2_rol_s3_jafet"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2_rol_s3_jafet_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "ec2_rol_s3_jafet"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2_rol_s3_mike_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "ec2_rol_s3_mike"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2_rol_s3_mike_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "ec2_rol_s3_mike"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2_rol_s3_ricardo_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "ec2_rol_s3_ricardo"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2_rol_s3_ricardo_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "ec2_rol_s3_ricardo"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2_role_s3_joan_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "ec2_role_s3_joan"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2_role_s3_joan_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "ec2_role_s3_joan"
}

resource "aws_iam_role_policy_attachment" "tfer--ec2_role_s3_joan_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "ec2_role_s3_joan"
}

resource "aws_iam_role_policy_attachment" "tfer--ex2_rol_s3_cesar_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "ex2_rol_s3_cesar"
}

resource "aws_iam_role_policy_attachment" "tfer--ex2_rol_s3_cesar_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "ex2_rol_s3_cesar"
}

resource "aws_iam_role_policy_attachment" "tfer--funcionEquipoDinamitaGeneratePOSData-role-ko96x407_AWSLambdaBasicExecutionRole-d119f234-b47c-439d-a39b-1f3d3f317114" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-d119f234-b47c-439d-a39b-1f3d3f317114"
  role       = "funcionEquipoDinamitaGeneratePOSData-role-ko96x407"
}

resource "aws_iam_role_policy_attachment" "tfer--glue_dany_test_s3_glue_test_daniel" {
  policy_arn = "arn:aws:iam::116981779666:policy/s3_glue_test_daniel"
  role       = "glue_dany_test"
}

resource "aws_iam_role_policy_attachment" "tfer--glue_full_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "glue_full"
}

resource "aws_iam_role_policy_attachment" "tfer--glue_full_AmazonRDSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role       = "glue_full"
}

resource "aws_iam_role_policy_attachment" "tfer--glue_role_mike_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "glue_role_mike"
}

resource "aws_iam_role_policy_attachment" "tfer--glue_role_mike_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "glue_role_mike"
}

resource "aws_iam_role_policy_attachment" "tfer--gluerolecesar_cesars3gluepolicy" {
  policy_arn = "arn:aws:iam::116981779666:policy/cesars3gluepolicy"
  role       = "gluerolecesar"
}

resource "aws_iam_role_policy_attachment" "tfer--josue_sqlconnect-role-894z65zc_AWSLambdaBasicExecutionRole-8eadd90a-b0ed-4d2e-9aba-abe956364ede" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-8eadd90a-b0ed-4d2e-9aba-abe956364ede"
  role       = "josue_sqlconnect-role-894z65zc"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda-inventario-cine-role-kyh8y33d_AWSLambdaBasicExecutionRole-b0b5ba20-dc33-4130-a5b0-c2f8953bec56" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-b0b5ba20-dc33-4130-a5b0-c2f8953bec56"
  role       = "lambda-inventario-cine-role-kyh8y33d"
}

resource "aws_iam_role_policy_attachment" "tfer--lambda_db_cesar-role-x6bff0kp_AWSLambdaBasicExecutionRole-0d88a53d-b5f2-4722-af1a-1b7f1d792e0e" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-0d88a53d-b5f2-4722-af1a-1b7f1d792e0e"
  role       = "lambda_db_cesar-role-x6bff0kp"
}

resource "aws_iam_role_policy_attachment" "tfer--oscar_ec2_role_s3_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "oscar_ec2_role_s3"
}

resource "aws_iam_role_policy_attachment" "tfer--oscar_ec2_role_s3_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "oscar_ec2_role_s3"
}

resource "aws_iam_role_policy_attachment" "tfer--oscar_lambda_db-1738255516616_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "oscar_lambda_db-1738255516616"
}

resource "aws_iam_role_policy_attachment" "tfer--oscar_lambda_db-1738255516616_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "oscar_lambda_db-1738255516616"
}

resource "aws_iam_role_policy_attachment" "tfer--oscar_lambda_db-role-mtg6a181_AWSLambdaBasicExecutionRole-8862cee0-3521-4509-88a5-db560cf07fba" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-8862cee0-3521-4509-88a5-db560cf07fba"
  role       = "oscar_lambda_db-role-mtg6a181"
}

resource "aws_iam_role_policy_attachment" "tfer--oscar_lambda_db_select-1738254720162_AWSLambdaSQSQueueExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaSQSQueueExecutionRole"
  role       = "oscar_lambda_db_select-1738254720162"
}

resource "aws_iam_role_policy_attachment" "tfer--oscar_lambda_db_select-1738254720162_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "oscar_lambda_db_select-1738254720162"
}

resource "aws_iam_role_policy_attachment" "tfer--oscar_lambda_select_db-1738255738420_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "oscar_lambda_select_db-1738255738420"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-monitoring-role_AmazonRDSEnhancedMonitoringRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSEnhancedMonitoringRole"
  role       = "rds-monitoring-role"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-proxy-role-1738254720162_rds-proxy-policy-1738254720162" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738254720162"
  role       = "rds-proxy-role-1738254720162"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-proxy-role-1738254851779_rds-proxy-policy-1738254851779" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738254851779"
  role       = "rds-proxy-role-1738254851779"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-proxy-role-1738255123498_rds-proxy-policy-1738255123498" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738255123498"
  role       = "rds-proxy-role-1738255123498"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-proxy-role-1738255236081_rds-proxy-policy-1738255236081" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738255236081"
  role       = "rds-proxy-role-1738255236081"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-proxy-role-1738255516616_rds-proxy-policy-1738255516616" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738255516616"
  role       = "rds-proxy-role-1738255516616"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-proxy-role-1738255738420_rds-proxy-policy-1738255738420" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738255738420"
  role       = "rds-proxy-role-1738255738420"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-proxy-role-1738256332658_rds-proxy-policy-1738256332658" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738256332658"
  role       = "rds-proxy-role-1738256332658"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-proxy-role-1738256636827_rds-proxy-policy-1738256636827" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738256636827"
  role       = "rds-proxy-role-1738256636827"
}

resource "aws_iam_role_policy_attachment" "tfer--rds-proxy-role-1738256955021_rds-proxy-policy-1738256955021" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/rds-proxy-policy-1738256955021"
  role       = "rds-proxy-role-1738256955021"
}

resource "aws_iam_role_policy_attachment" "tfer--readtest-role-dli0ri28_AWSLambdaBasicExecutionRole-26e3f0e6-4d68-48f5-8e8b-3b737e9b1722" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-26e3f0e6-4d68-48f5-8e8b-3b737e9b1722"
  role       = "readtest-role-dli0ri28"
}

resource "aws_iam_role_policy_attachment" "tfer--redshift_daniel_accesobuckets_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "redshift_daniel_accesobuckets"
}

resource "aws_iam_role_policy_attachment" "tfer--redshift_s3_mike_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "redshift_s3_mike"
}

resource "aws_iam_role_policy_attachment" "tfer--redshift_s3_oscar_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "redshift_s3_oscar"
}

resource "aws_iam_role_policy_attachment" "tfer--ricardo_sqlconnect-role-8el2605t_AWSLambdaBasicExecutionRole-af38241d-1b16-4f60-ab82-ee7019819d09" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-af38241d-1b16-4f60-ab82-ee7019819d09"
  role       = "ricardo_sqlconnect-role-8el2605t"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_db_lambda_jafet_AWSLambdaBasicExecutionRole-e69a771f-c562-411a-b943-544bf393d96a" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-e69a771f-c562-411a-b943-544bf393d96a"
  role       = "rol_db_lambda_jafet"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_db_lambda_jafet_AmazonRDSDataFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSDataFullAccess"
  role       = "rol_db_lambda_jafet"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_db_lambda_jafet_AmazonRDSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role       = "rol_db_lambda_jafet"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_glue_entretodos_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "rol_glue_entretodos"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_glue_entretodos_AmazonRDSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role       = "rol_glue_entretodos"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_glue_ricardo_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "rol_glue_ricardo"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_glue_ricardo_AmazonRDSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role       = "rol_glue_ricardo"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_glue_ricardo_s3_glue_getobject_ricardoglue" {
  policy_arn = "arn:aws:iam::116981779666:policy/s3_glue_getobject_ricardoglue"
  role       = "rol_glue_ricardo"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_rds_s3_AmazonRDSDirectoryServiceAccess" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonRDSDirectoryServiceAccess"
  role       = "rol_rds_s3"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_rds_s3_joan_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "rol_rds_s3_joan"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_redshift_jafet_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "rol_redshift_jafet"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_s3_danielglue_s3_glue_test_daniel" {
  policy_arn = "arn:aws:iam::116981779666:policy/s3_glue_test_daniel"
  role       = "rol_s3_danielglue"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_s3_redshift_benjamin_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "rol_s3_redshift_benjamin"
}

resource "aws_iam_role_policy_attachment" "tfer--rol_s3_redshift_ricardo_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "rol_s3_redshift_ricardo"
}

resource "aws_iam_role_policy_attachment" "tfer--role_github_actions_ec2_all_policy" {
  policy_arn = "arn:aws:iam::116981779666:policy/ec2_all_policy"
  role       = "role_github_actions"
}

resource "aws_iam_role_policy_attachment" "tfer--role_gluejosue_s3_glue_test_benjamin" {
  policy_arn = "arn:aws:iam::116981779666:policy/s3_glue_test_benjamin"
  role       = "role_gluejosue"
}

resource "aws_iam_role_policy_attachment" "tfer--role_s3_joan_s3_glue_test_joan" {
  policy_arn = "arn:aws:iam::116981779666:policy/s3_glue_test_joan"
  role       = "role_s3_joan"
}

resource "aws_iam_role_policy_attachment" "tfer--role_s3_oscarglue_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "role_s3_oscarglue"
}

resource "aws_iam_role_policy_attachment" "tfer--role_s3_rds_backup_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "role_s3_rds_backup"
}

resource "aws_iam_role_policy_attachment" "tfer--role_s3_rds_cesar_AmazonRDSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role       = "role_s3_rds_cesar"
}

resource "aws_iam_role_policy_attachment" "tfer--rolegluejoan_AWSGlueConsoleFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueConsoleFullAccess"
  role       = "rolegluejoan"
}

resource "aws_iam_role_policy_attachment" "tfer--rolegluejoan_AWSGlueSchemaRegistryFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AWSGlueSchemaRegistryFullAccess"
  role       = "rolegluejoan"
}

resource "aws_iam_role_policy_attachment" "tfer--rolegluejoan_AWSGlueServiceNotebookRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceNotebookRole"
  role       = "rolegluejoan"
}

resource "aws_iam_role_policy_attachment" "tfer--rolegluejoan_AWSGlueServiceRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSGlueServiceRole"
  role       = "rolegluejoan"
}

resource "aws_iam_role_policy_attachment" "tfer--rolegluejoan_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "rolegluejoan"
}

resource "aws_iam_role_policy_attachment" "tfer--rolegluejoan_AmazonRDSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role       = "rolegluejoan"
}

resource "aws_iam_role_policy_attachment" "tfer--rolegluejoan_AmazonS3FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
  role       = "rolegluejoan"
}

resource "aws_iam_role_policy_attachment" "tfer--rolegluejoan_s3_glue_test_joan" {
  policy_arn = "arn:aws:iam::116981779666:policy/s3_glue_test_joan"
  role       = "rolegluejoan"
}

resource "aws_iam_role_policy_attachment" "tfer--rolejafetglue_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "rolejafetglue"
}

resource "aws_iam_role_policy_attachment" "tfer--rolejafetglue_s3_forglue_Jafet" {
  policy_arn = "arn:aws:iam::116981779666:policy/s3_forglue_Jafet"
  role       = "rolejafetglue"
}

resource "aws_iam_role_policy_attachment" "tfer--s3_getAndPutAccess_AdministratorAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  role       = "s3_getAndPutAccess"
}

resource "aws_iam_role_policy_attachment" "tfer--slq_lambda_extact_mamh-1738255236081_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "slq_lambda_extact_mamh-1738255236081"
}

resource "aws_iam_role_policy_attachment" "tfer--sql-function-role-ee2o9p8f_AWSLambdaBasicExecutionRole-3f3e04ba-ba47-465f-b95e-af39bfa061c7" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-3f3e04ba-ba47-465f-b95e-af39bfa061c7"
  role       = "sql-function-role-ee2o9p8f"
}

resource "aws_iam_role_policy_attachment" "tfer--sql_extract_mamh-1738254851779_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "sql_extract_mamh-1738254851779"
}

resource "aws_iam_role_policy_attachment" "tfer--sql_lambda_mamh-role-63ti5fll_AWSLambdaBasicExecutionRole-09e6c181-9d33-4497-b372-19e51af0bc3a" {
  policy_arn = "arn:aws:iam::116981779666:policy/service-role/AWSLambdaBasicExecutionRole-09e6c181-9d33-4497-b372-19e51af0bc3a"
  role       = "sql_lambda_mamh-role-63ti5fll"
}

resource "aws_iam_role_policy_attachment" "tfer--sql_lambda_mamh-role-63ti5fll_AWSLambdaVPCAccessExecutionRole" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaVPCAccessExecutionRole"
  role       = "sql_lambda_mamh-role-63ti5fll"
}

resource "aws_iam_role_policy_attachment" "tfer--sql_lambda_mamh-role-63ti5fll_AmazonEC2FullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
  role       = "sql_lambda_mamh-role-63ti5fll"
}

resource "aws_iam_role_policy_attachment" "tfer--sql_lambda_mamh-role-63ti5fll_AmazonRDSFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonRDSFullAccess"
  role       = "sql_lambda_mamh-role-63ti5fll"
}

resource "aws_iam_role_policy_attachment" "tfer--sql_lambda_mamh-role-63ti5fll_AmazonVPCFullAccess" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
  role       = "sql_lambda_mamh-role-63ti5fll"
}
