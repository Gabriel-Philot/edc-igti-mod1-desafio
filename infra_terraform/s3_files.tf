
resource "aws_s3_object" "codigo-glue-job" {
  bucket = "${var.base_bucket_name}-${var.ambiente}"
  key    = "/scripts/glue_job_pyspark.py" # Diretório onde será gravado o arquivo
  source = "../etl/glue_job_pyspark.py"          # Arquivo com o job que vai subir
  etag   = filemd5("../etl/glue_job_pyspark.py") # Define qual é o objeto de parâmetro
} 