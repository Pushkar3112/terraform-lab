## Day 2 - Variables and Multiple Configurations

Used variable files to parameterize Terraform config for different environments.

### Files
- `main.tf` - defines filename and message as input variables
- `dev.tfvars` - values for dev environment
- `prod.tfvars` - values for prod environment

### Commands

Apply dev environment:
`terraform apply -var-file="dev.tfvars"`

Apply prod environment:
`terraform apply -var-file="prod.tfvars"`

Destroy:
`terraform destroy -var-file="dev.tfvars"`

### Outputs
- `file_path` - path of the created file
- `file_content` - content written inside the file
