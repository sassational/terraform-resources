variable "region" {
  description = "AWS region where the route table association will be managed"
  type        = string
}

variable "route_table_id" {
  description = "The ID of the routing table to associate with"
  type        = string
}

variable "subnet_id" {
  description = "The subnet ID to create an association. Conflicts with gateway_id. One of subnet_id or gateway_id must be provided."
  type        = string
  default     = ""
}

variable "gateway_id" {
  description = "The gateway ID to create an association. Conflicts with subnet_id. One of subnet_id or gateway_id must be provided."
  type        = string
  default     = ""
}
