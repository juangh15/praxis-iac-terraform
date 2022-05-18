# Praxis-IaC-terraform
Infraestructure as Code practice for deploy the Gildedrose application using AWS with Terraform.

## General Information
The infrastructure to be created by terraform is in the folder /infra/ and can be checked with the command: 

```
terraform plan
```
The 6 resources to be created in AWS are:

| Resource         | Type         | Terraform ID |
| ------------ | ------------- | ------------- |
| Elastic IP                  |"aws_eip"  | "elastic_ip"                  |
| EC2 Instance t2.small       |"aws_instance" |"ec2_instance"                 |
| Association of Elastic IP   |"aws_eip_association" | "eip_assoc"                 |
| Security Group              |"aws_security_group" | "ec2_public_security_group"                  |
| Database Subnet Group       |"aws_db_subnet_group" type | "db_subnet"                 |
| RDS Instance db.t3.micro    |"aws_db_instance" |"rds_db_instance"                 |

## Provisioning
The EC2 instance provision file is located in '/infra/user_data.sh'. This file installs jenkins and docker, and then you can create the necessary pipelines manually.
