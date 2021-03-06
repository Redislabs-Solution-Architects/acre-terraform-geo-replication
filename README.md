# acre-terraform-geo-replication

Use the latest "azurerm" Terraform provider,
combined with the latest ARM templates, to deploy
Azure Cache for Redis Enterprise (ACRE)
in two separate regions with active geo-replication

- _Tenant_
  - _Subscription_
    - _Service Principal_
    - **Resource Group**
      - **Storage Account**
      - **Redis Enterprise Cluster in Region 1**
      - **Redis Enterprise Cluster in Region 2**

## Prerequisites

### Secrets

1. Tenant ID
2. Subscription ID
3. Service Principal
   1. Client ID
   2. Client Secret
    
### Tools

1. Terraform CLI 0.14.7

## Getting started

```bash
  git clone https://github.com/redisgeek/acre-terraform-geo-replication
  cd acre-terraform-geo-replication
  terraform init
```
The output should include:
```text
  Terraform has been successfully initialized!
```
Copy the variables template.
```bash
cp terraform.tfvars.example terraform.tfvars
```
Update terraform.tfvars with your [secrets](#secrets)
and set the regions you want to deploy to.

```bash
vi terraform.tfvars
```

```bash
terraform plan
terraform apply
```

Have fun!

## Cleanup

Remove the resources that were created.

```bash
terraform destroy
```
