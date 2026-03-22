terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {}

module "web1" {
  source = "./modules/nginx_container"

  container_name = "nginx_web1"
  container_port = 8081
  image_name     = "nginx:latest"
}

module "web2" {
  source = "./modules/nginx_container"

  container_name = "nginx_web2"
  container_port = 8082
  image_name     = "nginx:latest"
}
