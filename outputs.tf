output "dependabot_organization_secret_repositories_id" {
  description = "Map of id values across all dependabot_organization_secret_repositories, keyed the same as var.dependabot_organization_secret_repositories"
  value       = { for k, v in github_dependabot_organization_secret_repository.dependabot_organization_secret_repositories : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dependabot_organization_secret_repositories_repository_id" {
  description = "Map of repository_id values across all dependabot_organization_secret_repositories, keyed the same as var.dependabot_organization_secret_repositories"
  value       = { for k, v in github_dependabot_organization_secret_repository.dependabot_organization_secret_repositories : k => v.repository_id if v.repository_id != null }
}
output "dependabot_organization_secret_repositories_secret_name" {
  description = "Map of secret_name values across all dependabot_organization_secret_repositories, keyed the same as var.dependabot_organization_secret_repositories"
  value       = { for k, v in github_dependabot_organization_secret_repository.dependabot_organization_secret_repositories : k => v.secret_name if v.secret_name != null && length(v.secret_name) > 0 }
}

