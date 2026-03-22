variable "container_config" {
  description = "List of container specifications"
  type = list(object({
    name = string
    port = number
  }))
  default = []
}
