terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

variable "message" {
  description = "The message to write into the file"
  type        = string
  default     = "Hello from Terraform"
}

resource "local_file" "hello" {
  filename = "${path.module}/hello.txt"
  content  = var.message
}

output "file_path" {
  description = "Path of the created file"
  value       = local_file.hello.filename
}
