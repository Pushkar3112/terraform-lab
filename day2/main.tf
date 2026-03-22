terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

variable "filename" {
  description = "Name of the file to create"
  type        = string
}

variable "message" {
  description = "Content to write inside the file"
  type        = string
}

resource "local_file" "env_file" {
  filename = "${path.module}/${var.filename}"
  content  = var.message
}

output "file_path" {
  description = "Path of the created file"
  value       = local_file.env_file.filename
}

output "file_content" {
  description = "Content written inside the file"
  value       = local_file.env_file.content
}
