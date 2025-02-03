resource "aws_glue_job" "glue_job" {
  name     = var.glue_job_name
  role_arn = var.iam_role_arn

  command {
    name            = "glueetl"
    script_location = "s3://${var.s3_bucket}/${var.s3_script_key}"
    python_version  = "3"
  }

  glue_version = "3.0"

  max_retries       = 1
  timeout           = 60
  number_of_workers = var.number_of_workers
  worker_type       = "G.1X"

  default_arguments = {
    "--job-language"                    = "python"
    "--enable-continuous-cloudwatch-log" = "true"
    "--enable-glue-datacatalog"          = "true"
  }
}

resource "aws_glue_trigger" "daily_trigger" {
  name     = "${var.glue_job_name}_daily_trigger"
  type     = "SCHEDULED"
  schedule = "cron(0 0 * * ? *)" # Se ejecuta todos los días a medianoche UTC

  actions {
    job_name = aws_glue_job.glue_job.name
  }
}
