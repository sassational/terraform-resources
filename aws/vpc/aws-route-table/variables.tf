variable "region" {
  description = "AWS region where the route table will be created"
  type        = string
  default     = "us-east-1"
}

variable "vpc_id" {
  description = "The VPC ID where the route table will be created"
  type        = string
}

variable "route_table_name" {
  description = "Name tag for the route table"
  type        = string
  default     = "main-route-table"
}

variable "routes" {
  description = <<-EOT
    List of route objects. Each route must have one destination (cidr_block, ipv6_cidr_block, or destination_prefix_list_id)
    and one target (gateway_id, nat_gateway_id, transit_gateway_id, etc.)
    
    Example:
    [
      {
        cidr_block     = "0.0.0.0/0"
        gateway_id     = "igw-12345678"
      },
      {
        cidr_block         = "10.0.0.0/16"
        transit_gateway_id = "tgw-12345678"
      }
    ]
  EOT
  type        = list(map(string))
  default     = []
}

variable "propagating_vgws" {
  description = "List of virtual gateway IDs for route propagation"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to assign to the route table"
  type        = map(string)
  default     = {}
}
