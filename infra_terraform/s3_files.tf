
## File spark job for emr
# resource "aws_s3_object" "codigo_spark_emr" {
#   bucket = aws_s3_bucket.datalake.id #Referêrncia do datalake criado
#   key    = "emr-code/pyspark/emr_job_spark_fro_tf.py"
#   source = "../job_spark.py"          # Arquivo com o job spark que vai
#   etag   = filemd5("../job_spark.py") # Define qual é o objeto de parâmetro
# }

# File spark job for glue
# resource "aws_s3_object" "codigo_spark_glue" {
#   bucket = aws_s3_bucket.datalake.id #Referêrncia do datalake criado
#   key    = "glue_job-code/pyspark/gluejob_spark_fro_tf.py"
#   source = "../job_spark_glue.py"          # Arquivo com o job spark que vai
#   etag   = filemd5("../job_spark_glue.py") # Define qual é o objeto de parâmetro
# }