resource "aws_security_group" "untrusted" {
  count = var.create_untrustedsg ? 1 : 0 # if value is true create one sg instance else create none
  name        = format("%s-%s-untrustedsg", var.env, var.region)
  description = "Untrusted network"
  vpc_id     = aws_vpc.vpc.id

  tags = {
    Name = format("%s-%s-untrustedsg", var.env, var.region)
  }
}

resource "aws_security_group" "trusted" {
  count = var.create_trustedsg ? 1 : 0 # if value is true create one sg instance else create none
  name        = format("%s-%s-trustedsg", var.env, var.region)
  description = "trusted network"
  vpc_id     = aws_vpc.vpc.id

  tags = {
    Name = format("%s-%s-trustedsg", var.env, var.region)
  }
}

resource "aws_security_group_rule" "allowhttpsUntrusted" {
  count = var.create_untrustedsg ? 1 : 0 # if value is true create one sg instance else create none
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.untrusted[0].id
  description = "Allow HTTPS"

}

resource "aws_security_group_rule" "allowhttpsTrusted" {
  count = var.create_trustedsg ? 1 : 0 # if value is true create one sg instance else create none
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.trusted[0].id
  description = "Allow HTTPS"

}