provider "aws" {
  region = var.region
}
/*
terraform {
  backend "s3" {

    bucket = "davigs-s3-2022"
    key    = "dev/terraform.tfstate"
    region = var.region
  }
  required_providers {
    aws = {
      version = "~> 3.35"
    }
  }
}
*/
module "vpc" {
  source = "./modules/vpc"

  cidr                = var.cidr
  private_subnets_map = var.private_subnets_map
  public_subnets_map  = var.public_subnets_map
}


module "ecr" {
  source = "./modules/ecr"
}

module "ecs" {
  source             = "./modules/ecs"
  vpc_id             = module.vpc.vpc_id
  private_subnets_id = module.vpc.private_subnets_id
  public_subnets_id  = module.vpc.public_subnets_id
  ecr_url            = module.ecr.ecr_url
  fargate_cpu        = var.fargate_cpu
  fargate_memory     = var.fargate_memory
  environment        = var.env
  app_name           = var.app_name
  image_tag          = var.image_tag
  app_port           = var.app_port
  app_count          = var.app_count
  health_check_path  = var.health_check_path

  depends_on = [module.ecr, module.vpc]
}
