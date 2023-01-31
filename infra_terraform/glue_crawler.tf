resource "aws_glue_crawler" "glue_crawler_rais" {
  database_name = "${var.database_name}"
  name          = "${var.glue_crawler_name}"
  role          = "${var.iam_arn}"

  s3_target {
    # Path onde o Crowler irá ler o dado já tratado no formato parquet.
    # Este path foi definido no glue job, para gravar os dados já tratados.
    path = "s3://${var.base_bucket_name}-${var.ambiente}/RAIS-2020/staging/"
  }
}