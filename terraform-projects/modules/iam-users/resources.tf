resource "aws_iam_user" "iam_user" {
     count = var.user_count
     name = "${var.username}-${count.index}"
}