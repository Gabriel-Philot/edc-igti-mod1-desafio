# HCL - Hardshicop Configuration Language
# Linguagem declarativa


resource "aws_s3_bucket" "datalake" {
  # Parâmetros de configuração do recurso escolhido
  bucket = "${var.base_bucket_name}-${var.ambiente}"
  tags = {
    IES   = "IGTI"
    CURSO = "EDC"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "datalake-configuration" {
  bucket = aws_s3_bucket.datalake.id

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = true
  }
}

resource "aws_s3_bucket_acl" "datalake-acl" {
  bucket = aws_s3_bucket.datalake.id
  acl    = "private"
}


resource "aws_s3_bucket_public_access_block" "datalake_public_access_block" {
  bucket                  = aws_s3_bucket.datalake.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

