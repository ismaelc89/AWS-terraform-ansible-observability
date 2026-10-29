variable "instance_env" {
  type        = string
  default     = "Production"
  description = "The environment the instance belongs to"
}

variable "public_subnet" {
  type = string
  description = "Public Subnet ID"
}

variable "private_subnet" {
  type = string
  description = "Private Subnet ID"
}

variable "public_security_group" {
  type = string
  description = "Public Security group ID" 
}

variable "private_security_group" {
  type = string
  description = "Public Security group ID" 
}