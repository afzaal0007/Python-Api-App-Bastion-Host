# Security Group
resource "aws_security_group" "bastion_sg" {
  name        = var.security_group_name
  description = "Allow SSH access"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.cidr_block] # Cidr Block to allow SSH from, Replace it with your public IP, Or Public Subnet or 0.0.0.0/0 for allow SSH from internet
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.security_group_name
  }


}

# EC2 Instance
resource "aws_instance" "bastion_host" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = var.key_name
  subnet_id                   = var.public_subnet_id
  vpc_security_group_ids      = [aws_security_group.bastion_sg.id]
  associate_public_ip_address = true

  tags = {
    Name = var.instance_name
  }

  depends_on = [aws_security_group.bastion_sg]

}
