output "container_urls" {
  description = "URLs of all running containers"
  value       = [for container in docker_container.web : "http://localhost:${container.ports[0].external}"]
}

output "container_names" {
  description = "Names of all running containers"
  value       = [for container in docker_container.web : container.name]
}
