#for vpc
variable "region" {
  description = "region"
  type        = string
  default     = ""
}

variable "cidr" {
  description = "The CIDR block for the VPC. Default value is a valid CIDR, but not acceptable by AWS and should be overridden"
  type        = string
  default     = "0.0.0.0/0"
}

variable "public_subnets_map" {
  description = "public subnets map"
  type = map(object({
    az   = string
    cidr = string
  }))
}
variable "private_subnets_map" {
  description = "private subnets map"
  type = map(object({
    az   = string
    cidr = string
  }))
}

#for ECS
variable "env" {
  description = ""
  type        = string
  default     = ""
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = ""
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = ""
}
variable "ecr_url" {
  description = "ecr url"
  type        = string
  default     = ""
}

variable "app_name" {
  type = string
}

variable "image_tag" {
  type = string
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = ""
}
variable "vpc_id" {
  description = "A list of private subnets id inside the VPC"
  type        = string
  default     = ""
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = ""
}

variable "public_subnets_id" {
  description = "A list of public subnets id inside the VPC"
  type        = list(string)
  default     = []
}

variable "private_subnets_id" {
  description = "A list of private subnets id inside the VPC"
  type        = list(string)
  default     = []
}

variable "health_check_path" {
  default = ""
}
