variable "spot_price" {
  description = "The maximum price to request on the spot market. Defaults to on-demand price if not specified"
  type        = string
}

variable "wait_for_fulfillment" {
  description = "If set, Terraform will wait for the Spot Request to be fulfilled (timeout: 10m)"
  type        = bool
  default     = false
}

variable "spot_type" {
  description = "Type of spot request. Valid values: 'one-time' or 'persistent'"
  type        = string
  default     = "persistent"

  validation {
    condition     = contains(["one-time", "persistent"], var.spot_type)
    error_message = "spot_type must be either 'one-time' or 'persistent'."
  }
}

variable "launch_group" {
  description = "A launch group is a group of spot instances that launch together and terminate together"
  type        = string
}

variable "instance_interruption_behavior" {
  description = "Indicates Spot instance behavior when it is interrupted. Valid values: 'terminate', 'stop', or 'hibernate'"
  type        = string
  default     = "terminate"

  validation {
    condition     = contains(["terminate", "stop", "hibernate"], var.instance_interruption_behavior)
    error_message = "instance_interruption_behavior must be 'terminate', 'stop', or 'hibernate'."
  }
}

variable "valid_until" {
  description = "The end date and time of the request, in UTC RFC3339 format (YYYY-MM-DDTHH:MM:SSZ). Default is 7 days from current date"
  type        = string
}

variable "valid_from" {
  description = "The start date and time of the request, in UTC RFC3339 format (YYYY-MM-DDTHH:MM:SSZ). Default is immediate"
  type        = string
}

variable "tags" {
  description = "A map of tags to assign to the Spot Instance Request (not automatically applied to the launched instance)"
  type        = map(string)
  default     = {}
}

variable "ami" {
  description = "The AMI to use for the instance"
  type        = string
}

variable "instance_type" {
  description = "The instance type to use for the instance"
  type        = string
}

variable "key_name" {
  description = "The key name to use for the instance"
  type        = string
}

variable "subnet_id" {
  description = "The VPC Subnet ID to launch in"
  type        = string
}

variable "vpc_security_group_ids" {
  description = "A list of security group IDs to associate with"
  type        = list(string)
  default     = []
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with an instance in a VPC"
  type        = bool
  default     = false
}

variable "availability_zone" {
  description = "The AZ to start the instance in"
  type        = string
}

variable "user_data" {
  description = "The user data to provide when launching the instance"
  type        = string
}

variable "user_data_base64" {
  description = "Can be used instead of user_data to pass base64-encoded binary data directly"
  type        = string
}

variable "iam_instance_profile" {
  description = "The IAM Instance Profile to launch the instance with"
  type        = string
}

variable "monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled"
  type        = bool
  default     = false
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized"
  type        = bool
  default     = false
}

variable "root_block_device" {
  description = "Customize details about the root block device of the instance"
  type = list(object({
    delete_on_termination = optional(bool)
    encrypted             = optional(bool)
    iops                  = optional(number)
    kms_key_id            = optional(string)
    volume_size           = optional(number)
    volume_type           = optional(string)
    throughput            = optional(number)
    tags                  = optional(map(string))
  }))
  default = []
}

variable "ebs_block_device" {
  description = "Additional EBS block devices to attach to the instance"
  type = list(object({
    device_name           = string
    delete_on_termination = optional(bool)
    encrypted             = optional(bool)
    iops                  = optional(number)
    kms_key_id            = optional(string)
    snapshot_id           = optional(string)
    volume_size           = optional(number)
    volume_type           = optional(string)
    throughput            = optional(number)
    tags                  = optional(map(string))
  }))
  default = []
}

variable "ephemeral_block_device" {
  description = "Customize Ephemeral (also known as Instance Store) volumes on the instance"
  type = list(object({
    device_name  = string
    virtual_name = string
  }))
  default = []
}

variable "network_interface" {
  description = "Customize network interfaces to be attached at instance boot time"

  type = list(object({
    device_index          = number
    network_interface_id  = string
    delete_on_termination = optional(bool)
  }))
  default = []
}

variable "source_dest_check" {
  description = "Controls if traffic is routed to the instance when the destination address does not match the instance"
  type        = bool
  default     = true
}

variable "disable_api_termination" {
  description = "If true, enables EC2 Instance Termination Protection"
  type        = bool
  default     = false
}

variable "instance_initiated_shutdown_behavior" {
  description = "Shutdown behavior for the instance. Valid values: 'stop' or 'terminate'"
  type        = string
  default     = "stop"
}

variable "placement_group" {
  description = "The Placement Group to start the instance in"
  type        = string
}

variable "tenancy" {
  description = "The tenancy of the instance. Valid values: 'default', 'dedicated', or 'host'"
  type        = string
  default     = "default"
}

variable "host_id" {
  description = "The Id of a dedicated host that the instance will be assigned to"
  type        = string
}

variable "cpu_core_count" {
  description = "Sets the number of CPU cores for an instance"
  type        = number
}

variable "cpu_threads_per_core" {
  description = "Sets the number of CPU threads per core for an instance (has no effect unless cpu_core_count is also set)"
  type        = number
}

variable "hibernation" {
  description = "If true, the launched EC2 instance will support hibernation"
  type        = bool
  default     = false
}

variable "instance_tags" {
  description = "A map of tags to assign to the launched instance (separate from spot request tags)"
  type        = map(string)
  default     = {}
}

variable "volume_tags" {
  description = "A map of tags to assign to the devices created by the instance at launch time"
  type        = map(string)
  default     = {}
}

variable "credit_specification" {
  description = "Customize the credit specification of the instance"
  type = object({
    cpu_credits = string
  })
}

variable "metadata_options" {
  description = "Customize the metadata options of the instance"
  type = object({
    http_endpoint               = optional(string)
    http_tokens                 = optional(string)
    http_put_response_hop_limit = optional(number)
    instance_metadata_tags      = optional(string)
  })
}

variable "enclave_options" {
  description = "Enable Nitro Enclaves on launched instances"
  type = object({
    enabled = bool
  })
}

variable "private_dns_name_options" {
  description = "Options for the instance hostname"
  type = object({
    enable_resource_name_dns_aaaa_record = optional(bool)
    enable_resource_name_dns_a_record    = optional(bool)
    hostname_type                        = optional(string)
  })
}

variable "capacity_reservation_specification" {
  description = "Describes an instance's Capacity Reservation targeting option"
  type = object({
    capacity_reservation_preference = optional(string)
    capacity_reservation_target = optional(object({
      capacity_reservation_id = string
    }))
  })
}

variable "launch_template" {
  description = "Specifies a Launch Template to configure the instance"
  type = object({
    id      = optional(string)
    name    = optional(string)
    version = optional(string)
  })
}
