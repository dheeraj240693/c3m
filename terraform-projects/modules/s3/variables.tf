##Role arn to assume
variable "bucket_count" {
   description = "Number of buckets wish to be provisioned in an account"
}

##AccountId
variable "accountid" {
   description = "12 digits aws account id"
}

##bucketname
variable "bucketname" {
    description = "Name of the bucket"
}