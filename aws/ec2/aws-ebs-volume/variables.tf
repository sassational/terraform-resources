variable "region" {
  description = "AWS region where the EBS volume will be created"
  type        = string
  default     = null
}

variable "availability_zone" {
  description = "Availability zone where the EBS volume will exist"
  type        = string
}

variable "size" {
  description = "Size of the EBS volume in GiBs"
  type        = number
  default     = 30
}

variable "type" {
  description = "Type of EBS volume. Can be standard, gp2, gp3, io1, io2, sc1 or st1"
  type        = string
  default     = "gp3"
  validation {
    condition     = contains(["standard", "gp2", "gp3", "io1", "io2", "sc1", "st1"], var.type)
    error_message = "Volume type must be one of: standard, gp2, gp3, io1, io2, sc1, st1"
  }
}

variable "iops" {
  description = "Amount of IOPS to provision for the disk. Only valid for type of io1, io2 or gp3"
  type        = number
  default     = null
}

variable "throughput" {
  description = "Throughput that the volume supports, in MiB/s. Only valid for type of gp3"
  type        = number
  default     = null
}

variable "encrypted" {
  description = "If true, the disk will be encrypted"
  type        = bool
  default     = true
}

variable "kms_key_id" {
  description = "ARN for the KMS encryption key. When specifying kms_key_id, encrypted needs to be set to true"
  type        = string
  default     = null
}

variable "snapshot_id" {
  description = "A snapshot to base the EBS volume off of"
  type        = string
  default     = null
}

variable "volume_initialization_rate" {
  description = "EBS provisioned rate for volume initialization, in MiB/s. Can only be set if snapshot_id is specified"
  type        = number
  default     = null
}

variable "multi_attach_enabled" {
  description = "Specifies whether to enable Amazon EBS Multi-Attach. Multi-Attach is supported on io1 and io2 volumes"
  type        = bool
  default     = false
}

variable "outpost_arn" {
  description = "Amazon Resource Name (ARN) of the Outpost"
  type        = string
  default     = null
}

variable "final_snapshot" {
  description = "If true, snapshot will be created before volume deletion. Any tags on the volume will be migrated to the snapshot"
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to assign to the resource"
  type        = map(string)
  default     = {}
}
