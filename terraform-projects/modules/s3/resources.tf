resource "aws_s3_bucket" "s3bucketonly" {
     count = var.bucket_count
     bucket = "${var.bucketname}-${var.accountid}-${count.index}"
}