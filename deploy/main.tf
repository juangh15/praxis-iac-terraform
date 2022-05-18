
module "deploy_ec2_and_rds" {
  source        = "../infra"
  aws_region    = "us-east-1"
  instance_type = "t2.small"
  ec2_tags      = { Name = "group3-ec2" }
  ami_id        = "ami-005de95e8ff495156"
  key_pair_name = "grupo3"
  user_data     = file("../infra/user_data.sh")

  subnet_id = "subnet-04e972f3a706c00e8"
  public_ip = true

  sg_name        = "group3-sg"
  sg_description = "Allow http over ports 8080 and 4200 and ssh over port 22"
  vpc_id         = "vpc-031420f7c99b1a0bd"
  sg_tags        = { Name = "group3-sg" }

  eip_vpc  = true
  eip_tags = { Name = "group3-eip" }

  rds_allocated_storage = 1
  rds_engine            = "postgres"
  rds_engine_version    = "14.1"
  rds_instance_class    = "db.t3.micro"
  rds_name              = "group3-rds"
  rds_username          = "postgres"
  rds_password          = "secret"
  rds_tags              = { Name = "group3-rds" }
  rds_port              = 5432
}