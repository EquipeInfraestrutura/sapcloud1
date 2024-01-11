variable "cidr_block" {
  default     = "172.36.0.0/16"
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnet_cidr_blocks" {
  default     = ["172.36.0.0/24", "172.36.2.0/24"]
  type        = list
  description = "List of public subnet CIDR blocks"
}

variable "private_subnet_cidr_blocks" {
  default     = ["172.36.1.0/24", "172.36.3.0/24"]
  type        = list
  description = "List of private subnet CIDR blocks"
}

variable "availability_zones" {
  default     = ["us-east-2a", "us-east-2b","us-east-2c"]
  type        = list
  description = "List of availability zones"
}

variable "gateway_ids" {
  default     = ["aws_internet_gateway.default.id","aws_vpn_gateway.vpg_projetosap.id"]
  type        = list(string)
  description = "Lista do internet gateway e virtual private gateway"
}