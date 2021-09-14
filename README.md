[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

# acre-terraform-geo-replication
## Deploy Azure Cache for Redis Enterprise (ACRE) in two separate regions with active geo-replication

Use the latest "azurerm" Terraform provider,
combined with the latest ARM templates, to deploy
Azure Cache for Redis Enterprise (ACRE)
in two separate regions with active geo-replication

- _Tenant_
  - _Subscription_
    - _Service Principal_
    - **Resource Group**
      - **Storage Account**
        - **Storage Container**
      - **Redis Enterprise Cluster in Region 1**
      - **Redis Enterprise Cluster in Region 2**

### Built with:

* [Terraform](https://terraform.io)

## | [Getting Started](#getting-started) | [See Also](#see-also)  | [License](#license) |

## Secrets

- AZURE_SUBSCRIPTION_ID
- AZURE_TENANT_ID
- AZURE_CLIENT_SECRET
- AZURE_CLIENT_ID
   
## Getting Started

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
>Update terraform.tfvars with your [secrets](#secrets)
and set the regions you want to deploy to.

```bash
vi terraform.tfvars
```

```bash
terraform plan
terraform apply
```

Have fun!

### Regions

There are default regions configured in the **variables.tf** file.
The ARM templates are expecting 3 AZs in each region.
If every region-cluster is deployed with 3 AZs, then the SLA is 99.999.
You can update your **terraform.tfvars** to use another region with 3 AZs.
Or you can use another region and also update the ARM template for that cluster.

### Cleanup

Remove the resources that were created.

```bash
terraform destroy
```

## See Also

[acre-terraform-cron-replication](https://github.com/redisgeek/acre-terraform-cron-replication)

## Roadmap

See the [open issues](https://github.com/redisgeek/acre-terraform-geo-replication/issues) for a list of proposed features (and known issues).

## Contributing

Pull-requests are welcomed!

## License

Distributed under the MIT License. See `LICENSE` for more information.

[contributors-shield]: https://img.shields.io/github/contributors/redisgeek/acre-terraform-geo-replication.svg?style=for-the-badge
[contributors-url]: https://github.com/redisgeek/acre-terraform-geo-replication/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/redisgeek/acre-terraform-geo-replication.svg?style=for-the-badge
[forks-url]: https://github.com/redisgeek/acre-terraform-geo-replication/network/members
[stars-shield]: https://img.shields.io/github/stars/redisgeek/acre-terraform-geo-replication.svg?style=for-the-badge
[stars-url]: https://github.com/redisgeek/acre-terraform-geo-replication/stargazers
[issues-shield]: https://img.shields.io/github/issues/redisgeek/acre-terraform-geo-replication.svg?style=for-the-badge
[issues-url]: https://github.com/redisgeek/acre-terraform-geo-replication/issues
[license-shield]: https://img.shields.io/github/license/redisgeek/acre-terraform-geo-replication.svg?style=for-the-badge
[license-url]: https://github.com/redisgeek/acre-terraform-geo-replication/blob/master/LICENSE.txt