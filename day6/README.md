## Bonus Challenge - Dynamic Infrastructure Creation

Dynamically creates multiple nginx containers from a variable list
using Terraform's for_each expression.

### Key Concept
Instead of calling a module N times manually, a single resource block
with for_each creates one container per entry in container_config.

### Ports Used
- web1: http://localhost:9001
- web2: http://localhost:9002
- web3: http://localhost:9003

### To add more containers
Just add an entry to terraform.tfvars — no code changes needed.

### Commands
`terraform init`
`terraform plan`
`terraform apply`
`terraform destroy`

### Output
container_urls = [
  "http://localhost:9001",
  "http://localhost:9002",
  "http://localhost:9003",
]
