#public route table resource block
resource "aws_route_table" "Public_RT" {
  vpc_id = aws_vpc.demovpc.id
  route = {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.id
  }

  tags = {
    Name = "Public Route Table"
  }
}

#route table for the private subnet
resource "aws_route_table" "private_rt" {
    vpc_id = aws_vpc.demo_vpc.id
    route = {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.nat.vpc_id
    }
    tags = {
        Name = "Private Route Table"
    }
}
