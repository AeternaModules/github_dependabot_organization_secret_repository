resource "github_dependabot_organization_secret_repository" "dependabot_organization_secret_repositories" {
  for_each = var.dependabot_organization_secret_repositories

  repository_id = each.value.repository_id
  secret_name   = each.value.secret_name
}

