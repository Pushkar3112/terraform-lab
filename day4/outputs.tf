output "web1_url" {
  description = "URL for web1 container"
  value       = module.web1.service_url
}

output "web1_container_name" {
  description = "Name of web1 container"
  value       = module.web1.container_name
}

output "web2_url" {
  description = "URL for web2 container"
  value       = module.web2.service_url
}

output "web2_container_name" {
  description = "Name of web2 container"
  value       = module.web2.container_name
}
