variable "region" {
  description = "(Optional) Region where this resource will be managed. Defaults to the provider's region."
  type        = string
}

variable "name" {
  description = "(Optional) Name of the security group. Conflicts with name_prefix."
  type        = string
}

variable "name_prefix" {
  description = "(Optional) Creates a unique name beginning with the specified prefix. Conflicts with name."
  type        = string
}

variable "description" {
  description = "(Optional) Security group description. Cannot be empty string."
  type        = string
  default     = "Managed by Terraform"

  validation {
    condition     = length(var.description) > 0
    error_message = "The description cannot be an empty string."
  }
}

variable "vpc_id" {
  description = "(Optional) VPC ID. Defaults to the region's default VPC."
  type        = string
}

variable "revoke_rules_on_delete" {
  description = "(Optional) Instruct Terraform to revoke all attached ingress and egress rules before deleting the rule itself."
  type        = bool
  default     = false
}

variable "tags" {
  description = "(Optional) Map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "ingress_rules" {
  description = "(Optional) List of ingress rules to create."
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = optional(list(string))
    ipv6_cidr_blocks = optional(list(string))
    prefix_list_ids  = optional(list(string))
    security_groups  = optional(list(string))
    self             = optional(bool)
    description      = optional(string)
  }))
  default = []
}

variable "egress_rules" {
  description = "(Optional) List of egress rules to create."
  type = list(object({
    from_port        = number
    to_port          = number
    protocol         = string
    cidr_blocks      = optional(list(string))
    ipv6_cidr_blocks = optional(list(string))
    prefix_list_ids  = optional(list(string))
    security_groups  = optional(list(string))
    self             = optional(bool)
    description      = optional(string)
  }))
  default = []
}
