## Day 4 - Terraform Modules

Used a reusable module to create two nginx containers on different ports.

### Directory Structure
```
day4/
├── main.tf                          # root config, calls the module twice
├── outputs.tf                       # reads outputs from both module instances
└── modules/
    └── nginx_container/
        ├── variables.tf             # module input variables
        ├── main.tf                  # docker image + container resources
        └── outputs.tf               # exposes container name and URL
```

### Module Variables
- `container_name` - name of the container
- `container_port` - host port to expose
- `image_name` - Docker image (default: nginx:latest)

### Containers Created
- `nginx_web1` running on http://localhost:8081
- `nginx_web2` running on http://localhost:8082

### Commands
`terraform init`
`terraform plan`
`terraform apply`
`terraform destroy`
