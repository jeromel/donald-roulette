output "website_url" {
  description = "URL du site HTML de la douane trumpienne"
  value       = aws_s3_bucket_website_configuration.site.website_endpoint
}
