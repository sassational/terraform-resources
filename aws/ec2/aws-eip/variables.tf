variable "region" {
  description = "Region where this resource will be managed. Defaults to the Region set in the provider configuration."
  type        = string
}

variable "address" {
  description = "IP address from an EC2 BYOIP pool. This option is only available for VPC EIPs."
  type        = string
}

variable "associate_with_private_ip" {
  description = "User-specified primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address."
  type        = string
}

variable "customer_owned_ipv4_pool" {
  description = "ID of a customer-owned address pool. For more on customer owned IP addresses check out Customer-owned IP addresses guide."
  type        = string
}

variable "domain" {
  description = "Indicates if this EIP is for use in VPC (vpc)."
  type        = string
  default     = "vpc"
}

variable "instance" {
  description = "EC2 instance ID. NOTE: You can specify either the instance ID or the network_interface ID, but not both."
  type        = string
}

variable "ipam_pool_id" {
  description = "The ID of an IPAM pool which has an Amazon-provided or BYOIP public IPv4 CIDR provisioned to it."
  type        = string
}

variable "network_border_group" {
  description = "Location from which the IP address is advertised. Use this parameter to limit the address to this location."
  type        = string
}

variable "network_interface" {
  description = "Network interface ID to associate with. NOTE: You can specify either the instance ID or the network_interface ID, but not both."
  type        = string
}

variable "public_ipv4_pool" {
  description = "EC2 IPv4 address pool identifier or 'amazon'. This option is only available for VPC EIPs."
  type        = string
}

variable "tags" {
  description = "Map of tags to assign to the resource. Tags can only be applied to EIPs in a VPC."
  type        = map(string)
  default     = {}
}
