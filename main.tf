module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
}

module "sg" {
  source = "./modules/sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2" {
  source                 = "./modules/ec2"
  instance_ami_name      = "ami-0b26b56ad6eda399a"
  instance_type          = "t2.medium"
  key_name               = "YOUR-KEY-PAIR"
  vpc_security_group_ids = ["YOUR-SG-ID"]
  subnet_id              = "YOUR-SUBNET-ID"
}
