variable "accountid" {
  description = "12 digit number of aws account id"
}

variable "aws_region" {
  description = "region in which to deploy resources"
}

###############################
# s3 bucket creation details #
##############################
variable "bucketname" {
  description = "Name of the bucket"
}

variable "s3buckets_count" {
  description = "Number of buckets to create in account"
}

###############################
# iam user creation details #
##############################

variable "username" {
  description = "Name of the iam user"
}
variable "iam_users_count" {
  description = "Number of iam users"
}

###############################
# iam role creation details #
##############################

variable "rolename" {
  description = "Name of the iam role"
}
variable "iam_roles_count" {
  description = "Number of iam roles"
}

###############################
# sg creation details #
##############################

variable "sgname" {
  description = "Name of the sg"
}
variable "sg_count" {
  description = "Number of securitygroups"
}