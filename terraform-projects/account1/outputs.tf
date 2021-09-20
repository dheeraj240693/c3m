output "sgids" {
  description = "ids of the securitygroups"
  value       = module.security_groups.sgids
}

output "s3bucket_ids" {
  description = "ids of the s3bucket"
  value       = module.s3.s3_ids
}

output "iam_role_arns" {
  description = "Arns of iam roles"
  value       = module.iam_roles.role_arns
}

output "iam_user_names" {
  description = "iam users name"
  value       = module.iam_user.usernames
}