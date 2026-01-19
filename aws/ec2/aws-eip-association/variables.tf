variable "region" {
  description = "Region where this resource will be managed. Defaults to the Region set in the provider configuration."
  type        = string
}

variable "allocation_id" {
  description = "(Forces new resource) ID of the associated Elastic IP. This argument is required despite being optional at the resource level due to legacy support for EC2-Classic networking."
  type        = string
}

variable "allow_reassociation" {
  description = "(Forces new resource) Whether to allow an Elastic IP address to be re-associated. Defaults to true."
  type        = bool
  default     = true
}

variable "instance_id" {
  description = "(Forces new resource) ID of the instance. The instance must have exactly one attached network interface. You can specify either the instance ID or the network interface ID, but not both."
  type        = string
}

variable "network_interface_id" {
  description = "(Forces new resource) ID of the network interface. If the instance has more than one network interface, you must specify a network interface ID. You can specify either the instance ID or the network interface ID, but not both."
  type        = string
}

variable "private_ip_address" {
  description = "(Forces new resource) Primary or secondary private IP address to associate with the Elastic IP address. If no private IP address is specified, the Elastic IP address is associated with the primary private IP address."
  type        = string
}

variable "public_ip" {
  description = "(Forces new resource, DEPRECATED since EC2-Classic networking has retired) Address of the associated Elastic IP."
  type        = string
}
