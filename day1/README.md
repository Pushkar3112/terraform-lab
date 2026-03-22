## Day 1 - Introduction to Terraform

Used the local provider to create a text file using Terraform.

### Commands Run
1. `terraform init` - downloaded the local provider plugin
2. `terraform plan` - previewed the file creation
3. `terraform apply` - created hello.txt with message variable
4. `terraform destroy` - removes the created file

### Variable
- `message` - the text written into hello.txt (default: "Hello from Terraform")

### Output
- `file_path` - prints the path of the created file after apply
