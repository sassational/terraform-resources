variable "region" {
  description = "Region where this resource will be managed. Defaults to the Region set in the provider configuration"
  type        = string
  default     = null
}

variable "volume_id" {
  description = "The Volume ID of which to make a snapshot"
  type        = string
}

variable "description" {
  description = "A description of what the snapshot is"
  type        = string
  default     = ""
}

variable "outpost_arn" {
  description = "The Amazon Resource Name (ARN) of the Outpost on which to create a local snapshot"
  type        = string
  default     = null
}

variable "storage_tier" {
  description = "The name of the storage tier. Valid values are 'archive' and 'standard'"
  type        = string
  default     = "standard"
  
  validation {
    condition     = var.storage_tier == null || contains(["archive", "standard"], var.storage_tier)
    error_message = "Storage tier must be either 'archive' or 'standard'."
  }
}

variable "permanent_restore" {
  description = "Indicates whether to permanently restore an archived snapshot"
  type        = bool
  default     = false
}

variable "temporary_restore_days" {
  description = "Specifies the number of days for which to temporarily restore an archived snapshot. Required for temporary restores only"
  type        = number
  default     = null
}

variable "tags" {
  description = "A map of tags to assign to the snapshot"
  type        = map(string)
  default     = {}
}
