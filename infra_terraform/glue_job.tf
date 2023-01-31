# Cria o Job Glue com os parâmetros necessários, a execução do Job é manual, através do AWS Console.
resource "aws_glue_job" "glue_job_rais" {
  name     = "${var.glue_job_name}" # Nome do Job que será exibido no console.
  role_arn = "${var.iam_arn}" # Está sendo selecionada a IAM role já existente, criada anteriormemte.
  max_retries = "1" # Máximo de tentativas de execução.
  timeout = 2880 
  command {
    # Path do bucket S3 onde está gravado o arquivo pyspark com o código do glue job a ser executado.
    script_location = "s3://${var.base_bucket_name}-${var.ambiente}/scripts/glue_job_pyspark.py" 
    python_version = "3"
  }
  execution_property {
    max_concurrent_runs = 1
  }
  glue_version = "3.0"
}