resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "info-public-1a"
  }
}

resource "aws_subnet" "private_1a" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.32.0/20"
  availability_zone       = "ap-northeast-1a"
  map_public_ip_on_launch = false

  tags = {
    Name = "info-private-1a"
  }
}

resource "aws_subnet" "private_1c" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.48.0/20"
  availability_zone       = "ap-northeast-1c"
  map_public_ip_on_launch = false

  tags = {
    Name = "info-private-1c"
  }
}
