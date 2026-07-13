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
  # --- Unconfirmed validation candidates, derived from github_dependabot_organization_secret_repository's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: secret_name
  #   source:    validateSecretNameFunc: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
}

