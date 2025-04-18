output "lambda_name" {
  value = aws_lambda_function.this.function_name
}

output "api_endpoint" {
  value = "${aws_apigatewayv2_api.this.api_endpoint}/phrase"
}
