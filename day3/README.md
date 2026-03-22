## Day 3 - Managing Containers with Terraform

Used the Docker provider to pull nginx image and run a container with port mapping.

### Prerequisites
- Docker Desktop running on Windows
- Docker accessible from WSL (`docker ps` works)

### Resources Created
- `docker_image.nginx` - pulls nginx:latest from Docker Hub
- `docker_container.nginx` - runs container with port 80 mapped to 8080

### Commands

Initialize:
`terraform init`

Preview:
`terraform plan`

Apply:
`terraform apply`

Verify:
`docker ps`
Open browser: http://localhost:8080

Destroy:
`terraform destroy`

### Variables
- `container_name` - name of the container (default: nginx_terraform)
- `host_port` - host machine port (default: 8080)

### Outputs
- `service_url` - full URL to access nginx (http://localhost:8080)
- `container_name` - name of the running container
