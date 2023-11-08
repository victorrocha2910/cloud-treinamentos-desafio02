variable "aws_region" {
  description = "AWS Region"
  default     = "us-east-1"
  type        = string
}

variable "aws_profile" {
  description = "AWS profile CLI"
  default     = "terraform"
  type        = string
}

variable "vpc_name" {
  description = "nome da vpc"
  default = "vpc-terraform-test"
  type = string
}

variable "vpc_cidr" {
  description = "vpc cidr"
  default = "172.10.0.0/16"
  type = string
}

variable "vpc_azs" {
  type = list(string)
  description = "lista de zonas"
  default = ["us-east-1a", "us-east-1b"]
}

variable "vpc_private_subnets" {
  type = list(string)
  description = "lista de zonas"
  default = ["172.10.1.0/24", "172.10.2.0/24"]
}

variable "vpc_public_subnets" {
  type = list(string)
  description = "lista de zonas"
  default = ["172.10.101.0/24", "172.10.102.0/24"]
}

variable "tags" {
  description = "tags para os serviços"
  type = map(string)
  default = {
    CC = "marisa"
    env = "dev"
    project = "marisa-wordpress"
  }
}

variable "db_engine" {
  description = "database engine"
  default = "mysql"
  type = string
}

variable "db_engine_version" {
  description = "database engine version"
  default = "5.7"
  type = string
}

variable "db_instance_class" {
  description = "classe da instancia do rds"
  default = "db.t3a.large"
  type = string
}

variable "db_name" {
  description = "database name"
  default = "marisa-site"
  type = string
}

variable "db_user" {
  description = "database username"
  default = "marisadb"
  type = string
}

variable "db_port" {
  description = "database port"
  default = "3306"
  type = string
}

variable "db_family" {
  description = "database parammeter group"
  default = "mysql5.7"
  type = string
}

variable "db_major_engine_version" {
  description = "classe da instancia do rds"
  default = "5.7"
  type = string
}

variable "sg_name" {
  description = "nome do security group"
  default = "site-marisa-sg"
  type = string
}

variable "sg_description" {
  description = "description security group"
  default = "sg for marisa site rsources"
  type = string
}

variable "db_identifier" {
  description = "identificador do database"
  default = "marisa-site-db"
  type = string
}

variable "instance_name" {
  description = "nome da instancia"
  default = "marisa-site"
  type = string
}

variable "zone_comment" {
  description = "comentário de registro da zona"
  default = "zona do dominio mrisastore.tf"
  type = string
}