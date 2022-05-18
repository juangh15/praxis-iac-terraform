# Asociating Elastic IP to EC2 instance
resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.ec2_instance.id
  allocation_id = aws_eip.elastic_ip.id
}

# Creating Elastic IP
resource "aws_eip" "elastic_ip" {
  vpc                  = var.eip_vpc
  network_border_group = var.aws_region
  tags                 = var.eip_tags
}

