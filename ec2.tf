#public instance 
resource "aws_instance" "public_instance" {
    ami = "ami-"
    instance_type = ""
    vpc_security_group_ids = aws_security_group.security_group.id
    subnet_id = aws_subnet.public_subnet.id
    key_name = "newkey"
    count = 1
    associate_public_ip_address = true
    tags = {
        Name = "public_instance"
    }
}

#private instance
resource "aws_instance" "private_instance" {
    ami = "ami-"
    instance_type = "t2.micro"
    vpc_security_group_ids = aws_security_group.security_group.ipv6_addresses
    subnet_id = aws_subnet.private_subnet.id
    key_name = "newkey"
    associate_public_ip_address = false
    
    tags = {
        Name = "Private instance"
    }
}