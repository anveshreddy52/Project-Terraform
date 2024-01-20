#nat gateway resource block
resource "aws_nat_gateway" "nat" {
    allocation_id = aws_eip.nat_eip
    subnet_id = aws_subnet.private_subnet

    tags = {
        Name = "aws vpc nat gateway"
    }  
}