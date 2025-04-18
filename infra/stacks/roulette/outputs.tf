output "site_url" {
  value = module.static_site.website_endpoint
}

output "api_url" {
  value = module.lambda_api.api_endpoint
}
