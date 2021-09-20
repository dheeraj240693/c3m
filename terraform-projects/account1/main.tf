terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  alias  = "crossaccount"
  assume_role {
    role_arn = "arn:aws:iam::641282393887:role/cross-account-role"
  }
}

module "s3" {
  source       = "../modules/s3"
  bucket_count = var.s3buckets_count
  accountid    = var.accountid
  providers = {
    aws = aws.crossaccount
  }
  bucketname = var.bucketname
}

module "iam_user" {
  source     = "../modules/iam-users"
  user_count = var.iam_users_count
  providers = {
    aws = aws.crossaccount
  }
  username = var.username
}

module "iam_roles" {
  source     = "../modules/iam-roles"
  accountid  = var.accountid
  role_count = var.iam_roles_count
  providers = {
    aws = aws.crossaccount
  }
  rolename = var.rolename
}

module "security_groups" {
  source    = "../modules/sg"
  accountid = var.accountid
  sg_count  = var.sg_count
  sgname    = var.sgname
  providers = {
    aws = aws.crossaccount
  }
}