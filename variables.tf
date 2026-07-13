variable "dependabot_organization_secret_repositories" {
  description = <<EOT
Map of dependabot_organization_secret_repositories, attributes below
Required:
    - repository_id
    - secret_name
EOT

  type = map(object({
    repository_id = number
    secret_name   = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

