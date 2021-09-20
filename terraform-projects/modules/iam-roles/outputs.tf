output "role_arns" {
    description = "Arns of iam roles"
    value = aws_iam_role.test_role[*].arn
}