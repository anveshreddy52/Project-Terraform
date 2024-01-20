#creating a security group resource block
resource "aws_security_group" "security_group" {
    description = "To allow the inbound and outbound traffic"
    vpc_id = aws_vpc.demo_vpc.id
    name = "security group"

    ingress = {
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 22
    to_port = 22
    

    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 8080
    to_port = 8080



    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    from_port = 443
    to_port = 443
    }
    
    egress = {
        protocol = -1
        cidr_block =["0.0.0.0/0"]
        from_port = 0
        to_port = 0
    }
    tags = {
        Name = "sg"
    }
}