variable "region" {
  description = "Region where this resource will be managed. Defaults to the Region set in the provider configuration."
  type        = string
}

variable "key_name" {
  description = "The name for the key pair. Conflicts with key_name_prefix."
  type        = string
}

variable "key_name_prefix" {
  description = "Creates a unique name beginning with the specified prefix. Conflicts with key_name."
  type        = string
}

variable "public_key" {
  description = "The public key material."
  type        = string
}

variable "tags" {
  description = "Key-value map of resource tags."
  type        = map(string)
  default     = {}
}
