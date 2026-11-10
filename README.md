# Terraform Associate (004) Study Labs

Hands-on labs from studying for the HashiCorp Terraform Associate (004) certification, built on AWS (us-east-2).

## Labs

| Folder | What it covers |
| --- | --- |
| `learn-terraform-get-started-aws` | Core workflow: create, change and destroy an EC2 instance |
| `providers-and-versioning` | Multiple providers, provider aliases, version constraints and the dependency lock file |
| `variables-and-types` | Variable types (list, set, map, object), variable precedence, `terraform console` and sensitive outputs |
| `loops-and-dynamic-blocks` | `count` versus `for_each` (index versus key addresses), `for` expressions, splats versus `values()`, and `dynamic` blocks |
| `modules-and-sources` | Writing and calling a local module, passing an aliased provider with `providers`, module scope rules, and Registry versus Git sources (`version` versus `?ref=`) |
| `remote-state-and-locking` | Migrating local state to an S3 backend, partial backend configuration, S3 native state locking, `-lock-timeout`, `removed` blocks and the `allowed_account_ids` guard |

## Official tutorials completed

- [Get Started – AWS](https://developer.hashicorp.com/terraform/tutorials/aws-get-started)
- [Lock and upgrade provider versions](https://developer.hashicorp.com/terraform/tutorials/cli/provider-versioning)
- [Manage Terraform versions](https://developer.hashicorp.com/terraform/tutorials/configuration-language/versions)
- [Initialize Terraform configuration](https://developer.hashicorp.com/terraform/tutorials/cli/init)
- [Create a Terraform plan](https://developer.hashicorp.com/terraform/tutorials/cli/plan)
- [Apply Terraform configuration](https://developer.hashicorp.com/terraform/tutorials/cli/apply)
- [Define infrastructure with resources](https://developer.hashicorp.com/terraform/tutorials/configuration-language/resource)
- [Query data sources](https://developer.hashicorp.com/terraform/tutorials/configuration-language/data-sources)
- [Customize Terraform configuration with variables](https://developer.hashicorp.com/terraform/tutorials/configuration-language/variables)
- [Output data from Terraform](https://developer.hashicorp.com/terraform/tutorials/configuration-language/outputs)
- [Perform dynamic operations with functions](https://developer.hashicorp.com/terraform/tutorials/configuration-language/functions)
- [Create dynamic expressions](https://developer.hashicorp.com/terraform/tutorials/configuration-language/expressions)
- [Create resource dependencies](https://developer.hashicorp.com/terraform/tutorials/configuration-language/dependencies)
- [Manage resource lifecycle](https://developer.hashicorp.com/terraform/tutorials/state/resource-lifecycle)
- [Validate modules with custom conditions](https://developer.hashicorp.com/terraform/tutorials/configuration-language/custom-conditions)
- [Use checks to validate infrastructure](https://developer.hashicorp.com/terraform/tutorials/configuration-language/checks)
- [Protect sensitive input variables](https://developer.hashicorp.com/terraform/tutorials/configuration-language/sensitive-variables)
- [Inject secrets into Terraform using the Vault provider](https://developer.hashicorp.com/terraform/tutorials/secrets/secrets-vault)
- [Use registry modules in configuration](https://developer.hashicorp.com/terraform/tutorials/modules/module-use)
- [Build and use a local module](https://developer.hashicorp.com/terraform/tutorials/modules/module-create)
- [Manage resources in Terraform state](https://developer.hashicorp.com/terraform/tutorials/state/state-cli)
- [Use refresh-only mode to sync Terraform state](https://developer.hashicorp.com/terraform/tutorials/state/refresh)
- [Manage resource drift](https://developer.hashicorp.com/terraform/tutorials/state/resource-drift)
- [Use configuration to move resources](https://developer.hashicorp.com/terraform/tutorials/state/move-config)