terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

variable "container_name" {
  description = "Name of the Docker container"
  type        = string
  default     = "nginx_terraform"
}

variable "host_port" {
  description = "Port on your machine to access the container"
  type        = number
  default     = 8080
}

resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = false
}

resource "docker_container" "nginx" {
  name  = var.container_name
  image = docker_image.nginx.image_id

  ports {
    internal = 80
    external = var.host_port
  }
}

output "service_url" {
  description = "URL to access the nginx container"
  value       = "http://localhost:${var.host_port}"
}

output "container_name" {
  description = "Name of the running container"
  value       = docker_container.nginx.name
}
