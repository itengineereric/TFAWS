resource "aws_subnet" "pub" {
  count             = var.pubsubcidr != [] ? length(var.pubsubcidr) : 0
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.pubsubcidr[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = {
    Name = format("%s-%s-pub-%s", var.env, var.region, count.index + 1)
  }
}

resource "aws_subnet" "priv" {
  count             = var.privsubcidr != [] ? length(var.privsubcidr) : 0
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = var.privsubcidr[count.index]
  availability_zone = data.aws_availability_zones.available.names[count.index]

  tags = {
    Name = format("%s-%s-priv-%s", var.env, var.region, count.index + 1)
  }
}