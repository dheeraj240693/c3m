output "usernames" {
    description = "iam users names"
    value = aws_iam_user.iam_user[*].name
}