variable "glue_job_name" {
    description = "Nombre del Glue Job"
    type        = string
}

variable "glue_role_arn" {
    description = "ARN del rol IAM que usará el Glue Job"
    type        = string
}

variable "output_bucket" {
    description = "Bucket donde se almacena el script de Glue"
    type        = string
}

variable "s3_script_key" {
    description = "Ruta del script en el bucket de S3"
    type        = string
}

variable "number_of_workers" {
    description = "Número de workers en AWS Glue"
    type        = number
    default     = 2
}