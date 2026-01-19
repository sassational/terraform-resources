variable "vpc_id" {
  description = "The VPC ID to create the Internet Gateway in"
  type        = string
  
}

variable "region" {
  description = "Region where this resource will be managed"
  type        = string
  
}

variable "tags" {
  description = "A map of tags to assign to the Internet Gateway"
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "Name tag for the Internet Gateway"
  type        = string
  default     = "main-igw"
}
