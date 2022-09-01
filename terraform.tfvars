#variables for VPC
region = "eu-central-1"
cidr   = "10.0.0.0/16"
private_subnets_map = {
  subnet_1 = {
    az   = "eu-central-1a"
    cidr = "10.0.1.0/24"
  }
  subnet_2 = {
    az   = "eu-central-1b"
    cidr = "10.0.2.0/24"
  }
}
public_subnets_map = {
  subnet_1 = {
    az   = "eu-central-1a"
    cidr = "10.0.101.0/24"
  }
  subnet_2 = {
    az   = "eu-central-1b"
    cidr = "10.0.102.0/24"
  }
}
app_name = "myapp"
# Variables for ECS
env               = "dev"
fargate_cpu       = "512"
fargate_memory    = "1024"
image_tag         = "1"
app_port          = "80"
app_count         = "1"
health_check_path = "/"
