##Name of securitygroup
variable "sgname" {
  description = "Name of the sg"
}

##Securitygroup count
variable "sg_count" {
    description = "Number of securitygroups to create"
}

##AccountId
variable "accountid" {
  description = "12 digits aws account id"
}