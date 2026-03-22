output "container_name" {
  description = "Name of the created container"
  value       = docker_container.this.name
}

output "container_id" {
  description = "ID of the created container"
  value       = docker_container.this.id
}

output "service_url" {
  description = "URL to access this container"
  value       = "http://localhost:${var.container_port}"
}
