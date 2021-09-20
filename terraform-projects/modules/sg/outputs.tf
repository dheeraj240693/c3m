output "sgids" {
    description = "ids of the securitygroups"
    value = aws_security_group.sg[*].id
}