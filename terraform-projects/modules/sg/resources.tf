##Get the information of default vpc before creating securitygroup 
data "aws_vpcs" "vpc_info" {
  filter {
    name = "is-default"
    values = [ "true" ]
  }
}

##Create sg by passing default sg id
resource "aws_security_group" "sg" {
  count = var.sg_count
  name  = "${var.sgname}-${var.accountid}-${count.index}"
  tags = {
    Name = "${var.sgname}-${var.accountid}-${count.index}"
  }
  vpc_id  = tolist(data.aws_vpcs.vpc_info.ids)[0]
}