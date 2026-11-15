# Terraform Associate (004) Study Labs

**Status: Passed on November 14, 2026.** [HashiCorp Certified: Terraform Associate (004)](https://www.credly.com/badges/be20626d-60df-4a61-a964-0ff5da12b20f/public_url), valid through November 2028.

Hands-on labs I built while preparing for the certification, on AWS (us-east-2). Each folder is a small, self-contained configuration that I wrote to practice one area of the exam.

## Labs

| Folder | What it covers |
| --- | --- |
| `learn-terraform-get-started-aws` | Core workflow: create, change and destroy an EC2 instance |
| `providers-and-versioning` | Multiple providers, provider aliases, version constraints and the dependency lock file |
| `variables-and-types` | Variable types (list, set, map, object), variable precedence, `terraform console` and sensitive outputs |
| `loops-and-dynamic-blocks` | `count` versus `for_each` (index versus key addresses), `for` expressions, splats versus `values()`, and `dynamic` blocks |
| `modules-and-sources` | Writing and calling a local module, passing an aliased provider with `providers`, module scope rules, and Registry versus Git sources (`version` versus `?ref=`) |
| `remote-state-and-locking` | Migrating local state to an S3 backend, partial backend configuration, S3 native state locking, `-lock-timeout`, `removed` blocks and the `allowed_account_ids` guard |
| `import-existing` | Importing existing AWS resources with `import` blocks and generated config versus the `terraform import` command, inspecting state, and `TF_LOG` logging |

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
- [Troubleshoot Terraform](https://developer.hashicorp.com/terraform/tutorials/configuration-language/troubleshooting-workflow)
- [Collaborate using HCP Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-hcp-terraform)
- [HCP Terraform Get Started collection](https://developer.hashicorp.com/terraform/tutorials/cloud-get-started)
- [Multiple variable sets](https://developer.hashicorp.com/terraform/tutorials/cloud/cloud-multiple-variable-sets)
- [Organize workspaces with projects](https://developer.hashicorp.com/terraform/tutorials/cloud/projects)
- [Connect workspaces with run triggers](https://developer.hashicorp.com/terraform/tutorials/cloud/cloud-run-triggers)

## What I took away

- **State is yours to manage.** Coming from CloudFormation, the biggest shift was owning state: where it lives, who can write to it, and how to repair it with `moved`, `removed` and `import` blocks.
- **Addresses matter more than names.** Terraform tracks resources by address, which is why `for_each` is safer than `count` for anything that changes over time.
- **Guardrails come in layers.** Variable validation, preconditions, provider settings such as `allowed_account_ids`, and policy in HCP Terraform each catch a different kind of mistake.