# Associating public subnet with the route table
resource "aws_route_table_association" "public" {
  subnet_id = aws_subnet.public_subnet
  route_table_id = aws_route_table.Public_RT
}

#associating private subnet with the routetable
resource "aws_route_table_association" "private" {
    subnet_id = aws_subnet.private_subnet.id
    route_table_id = aws_route_table.private_rt.id 
}