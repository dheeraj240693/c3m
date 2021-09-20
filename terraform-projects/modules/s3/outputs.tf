output "s3_ids" {
    description = "Name of the s3 buckets"
    value = aws_s3_bucket.s3bucketonly[*].id
}