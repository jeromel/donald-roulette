module "static_site" {
  source      = "../../modules/s3_static_site"
  bucket_name = var.bucket_name
}

module "lambda_api" {
  source               = "../../modules/lambda_basic_api"
  function_name        = "trump-phrase-api"
  handler              = "index.handler"
  runtime              = "nodejs18.x"
  lambda_zip_path      = "${path.module}/../../../app/backend/lambda.zip"
  lambda_exec_role_arn = var.lambda_exec_role_arn
}
