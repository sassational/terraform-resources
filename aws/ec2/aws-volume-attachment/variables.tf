variable "region" {
  description = "Region where this resource will be managed. Defaults to the Region set in the provider configuration"
  type        = string
}

variable "device_name" {
  description = "The device name to expose to the instance (for example, /dev/sdh or xvdh)"
  type        = string
  validation {
    condition     = can(regex("^(/dev/sd[h-z]|xvd[h-z])$", var.device_name))
    error_message = "Device name must be in the format /dev/sdh-z or xvdh-z"
  }
}

variable "instance_id" {
  description = "ID of the Instance to attach to"
  type        = string
}

variable "volume_id" {
  description = "ID of the Volume to be attached"
  type        = string
}

variable "force_detach" {
  description = "Set to true if you want to force the volume to detach. Use only as a last resort as this can result in data loss"
  type        = bool
  default     = false
}

variable "skip_destroy" {
  description = "Set to true if you do not wish to detach the volume from the instance at destroy time"
  type        = bool
  default     = false
}

variable "stop_instance_before_detaching" {
  description = "Set to true to ensure that the target instance is stopped before trying to detach the volume"
  type        = bool
  default     = false
}
