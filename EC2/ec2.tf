### Launch an EC2 Server

resource "aws_instance" "Test-EC2" {
  ami                         = var.ami_id
  instance_type               = var.instance-type
  subnet_id                   = aws_subnet.my_subnet[count.index].id
  count                       = var.instance-count
  vpc_security_group_ids      = [aws_security_group.my_sg.id]
  key_name                    = aws_key_pair.tf-key-pair.key_name
  associate_public_ip_address = true
  tags = {
    "Name"        = "WEB-Server"
    "Launched-By" = "Terraform-CLI"
    "Team"        = "DevOps"
  }
}