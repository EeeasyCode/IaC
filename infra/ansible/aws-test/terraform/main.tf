# AWS Provider 설정
provider "aws" {
  region = var.aws_region
}

# 네트워크 모듈 호출
module "network" {
  source             = "./modules/network"
  vpc_cidr           = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
  availability_zone = var.availability_zone
}

# 보안 모듈 호출
module "security" {
  source  = "./modules/security"
  vpc_id  = module.network.vpc_id
}

# 라우팅 모듈 호출
module "routing" {
  source             = "./modules/routing"
  vpc_id             = module.network.vpc_id
  internet_gateway_id = module.network.internet_gateway_id
  subnet_id          = module.network.public_subnet_id
}

# EC2 모듈 호출
module "ec2" {
  source             = "./modules/ec2"
  public_subnet_id   = module.network.public_subnet_id
  security_group_id  = module.security.security_group_id
  availability_zone = var.availability_zone
}
