variable "base_bucket_name" {
  default = "datalake-gp-igti-challenge-2023-01"
}

variable "ambiente" {
  default = "production"
}

variable "glue_job_name" {
  default = "glue_job_spark_rais_challenge"
}

variable "glue_crawler_name" {
  default = "glue_crawler_rais_challenge"
}
# URI da IAM Role criada no AWS.
variable "iam_arn" {
  default = "arn:aws:iam::415658869338:role/AWSGlueServiceRole-admin"
}

variable "database_name" {
  default = "database-rais-challenge"
}