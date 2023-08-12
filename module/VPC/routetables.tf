resource "aws_route_table" "rtpub" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "rtpub"
  }
}

resource "aws_route_table" "rtpriv" {
  vpc_id = aws_vpc.vpc.id
  tags = {
    Name = "rtpriv"
  }
}

resource "aws_route" "r_to_igw" {
  route_table_id         = aws_route_table.rtpub.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.igw.id
}

resource "aws_route_table_association" "rtpub_to_pubsub" { #to do add condition if public subnet is not empty
  count          = var.pubsubcidr != [] ? length(var.pubsubcidr) : 0
  subnet_id      = aws_subnet.pub[count.index].id
  route_table_id = aws_route_table.rtpub.id
}



