#elastic ip resource block
resource "aws_eip" "nat_eip" {
    domain = "vpc"
    depends_on = [ aws_internet_gateway.igw.id ]

  tags = {
    Name = "Nat Gateway Eip"
  }
}