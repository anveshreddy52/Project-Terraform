#public subnet resource block
resource "aws_subnet" "public_subnet" {
    vpc_id = aws_vpc.demovpc.id
    cidr_block = "10.0.0.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-1a"
    tags = {
        Name = "Public Subnet"
    }
}

#private subnet resource block
resource "aws_subnet" "private_subnet" {
    vpc_id = aws_vpc.demovpc.id
    cidr_block = "10.0.0.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-1a"
    tags = {
      Name = "Private Subnet"
    }
}