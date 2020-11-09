# terraform-google-dataproc

## Terraform Structure
Overall File structure for regional dataproc section. To provision, edit the terraform.tfvars files within the folders.
```
├── dataproc
|   ├── backend.tf
|   ├── main.tf
|   ├── outputs.tf
|   ├── providers.tf
|   ├── terraform.tfvars
|   ├── variables.tf
|   └── versions.tf
```

## Variables

Declare variables in terraform.tfvars needed for provisioning

## Initialization script and Environment variables

Create bucket for Dataproc cluster and add file `env-variable.sh` to it, it contains installation for monitoring agent. Any other environment variable can be defined via it, to make sure it is present on all nodes (primary and secondary) upon initialization.

## Steps to provision
```
terraform init
terraform plan
terraform apply
```

## Steps to destroy
```
terraform plan
terraform destroy
```
