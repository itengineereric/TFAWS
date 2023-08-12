resource "aws_eip" "natgwip" {
  count = var.privsubcidr != [] && var.create_natgw ? 1 : 0 # private subnet and natgw must exist to proceed creation
}

resource "aws_nat_gateway" "natgw" {
  count         = var.privsubcidr != [] && var.create_natgw ? 1 : 0 # private subnet and natgw must exist to proceed creation
  allocation_id = aws_eip.natgwip[0].id
  subnet_id     = aws_subnet.priv[0].id

  tags = {
    Name = "gw NAT"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  # depends_on = [aws_internet_gateway.example]
}