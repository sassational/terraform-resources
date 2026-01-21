variable "ami" {
  description = "AMI to use for the instance. Required unless launch_template is specified."
  type        = string
  default     = null
}

variable "instance_type" {
  description = "Instance type to use for the instance."
  type        = string
  default     = "t3.micro"
}

variable "availability_zone" {
  description = "AZ to start the instance in."
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "VPC Subnet ID to launch in."
  type        = string
  default     = null
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs to associate with."
  type        = list(string)
  default     = null
}

variable "security_groups" {
  description = "List of security group names to associate with."
  type        = list(string)
  default     = null
}

variable "key_name" {
  description = "Key name of the Key Pair to use for the instance."
  type        = string
  default     = null
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address with an instance in a VPC."
  type        = bool
  default     = null
}

variable "private_ip" {
  description = "Private IP address to associate with the instance in a VPC."
  type        = string
  default     = null
}

variable "secondary_private_ips" {
  description = "List of secondary private IPv4 addresses to assign to the instance's primary network interface."
  type        = list(string)
  default     = null
}

variable "ipv6_address_count" {
  description = "Number of IPv6 addresses to associate with the primary network interface."
  type        = number
  default     = null
}

variable "ipv6_addresses" {
  description = "Specify one or more IPv6 addresses from the range of the subnet to associate with the primary network interface."
  type        = list(string)
  default     = null
}

variable "enable_primary_ipv6" {
  description = "Whether to assign a primary IPv6 Global Unicast Address (GUA) to the instance."
  type        = bool
  default     = null
}

variable "user_data" {
  description = "User data to provide when launching the instance."
  type        = string
  default     = null
}

variable "user_data_base64" {
  description = "Can be used instead of user_data to pass base64-encoded binary data directly."
  type        = string
  default     = null
}

variable "user_data_replace_on_change" {
  description = "When set to true, updates to user_data will trigger a destroy and recreate."
  type        = bool
  default     = false
}

variable "iam_instance_profile" {
  description = "IAM Instance Profile to launch the instance with."
  type        = string
  default     = null
}

variable "disable_api_stop" {
  description = "If true, enables EC2 Instance Stop Protection."
  type        = bool
  default     = null
}

variable "disable_api_termination" {
  description = "If true, enables EC2 Instance Termination Protection."
  type        = bool
  default     = null
}

variable "ebs_optimized" {
  description = "If true, the launched EC2 instance will be EBS-optimized."
  type        = bool
  default     = null
}

variable "get_password_data" {
  description = "If true, wait for password data to become available and retrieve it."
  type        = bool
  default     = false
}

variable "hibernation" {
  description = "If true, the launched EC2 instance will support hibernation."
  type        = bool
  default     = null
}

variable "monitoring" {
  description = "If true, the launched EC2 instance will have detailed monitoring enabled."
  type        = bool
  default     = false
}

variable "source_dest_check" {
  description = "Controls if traffic is routed to the instance when the destination address does not match the instance."
  type        = bool
  default     = true
}

variable "tenancy" {
  description = "Tenancy of the instance (default, dedicated, or host)."
  type        = string
  default     = null
}

variable "host_id" {
  description = "ID of a dedicated host that the instance will be assigned to."
  type        = string
  default     = null
}

variable "host_resource_group_arn" {
  description = "ARN of the host resource group in which to launch the instances."
  type        = string
  default     = null
}

variable "placement_group" {
  description = "Placement Group to start the instance in."
  type        = string
  default     = null
}

variable "placement_partition_number" {
  description = "Number of the partition the instance is in."
  type        = number
  default     = null
}

variable "instance_initiated_shutdown_behavior" {
  description = "Shutdown behavior for the instance (stop or terminate)."
  type        = string
  default     = null
}

variable "tags" {
  description = " Map of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

variable "volume_tags" {
  description = "Map of tags to assign, at instance-creation time, to root and EBS volumes."
  type        = map(string)
  default     = {}
}

variable "root_block_device" {
  description = "Configuration block to customize details about the root block device of the instance."
  type = list(object({
    delete_on_termination = optional(bool)
    encrypted             = optional(bool)
    iops                  = optional(number)
    kms_key_id            = optional(string)
    tags                  = optional(map(string))
    throughput            = optional(number)
    volume_size           = optional(number)
    volume_type           = optional(string)
  }))
  default = []
}

variable "ebs_block_device" {
  description = "Additional EBS block devices to attach to the instance."
  type = list(object({
    device_name           = string
    delete_on_termination = optional(bool)
    encrypted             = optional(bool)
    iops                  = optional(number)
    kms_key_id            = optional(string)
    snapshot_id           = optional(string)
    tags                  = optional(map(string))
    throughput            = optional(number)
    volume_size           = optional(number)
    volume_type           = optional(string)
  }))
  default = []
}

variable "ephemeral_block_device" {
  description = "Customize Ephemeral (Instance Store) volumes on the instance."
  type = list(object({
    device_name  = string
    no_device    = optional(bool)
    virtual_name = optional(string)
  }))
  default = []
}

variable "network_interface" {
  description = "Customize network interfaces to be attached at instance boot time."
  type = list(object({
    device_index          = number
    network_interface_id  = string
    delete_on_termination = optional(bool)
    network_card_index    = optional(number)
  }))
  default = []
}

variable "metadata_options" {
  description = "Customize the metadata options of the instance."
  type = object({
    http_endpoint               = optional(string)
    http_protocol_ipv6          = optional(string)
    http_put_response_hop_limit = optional(number)
    http_tokens                 = optional(string)
    instance_metadata_tags      = optional(string)
  })
  default = null
}

variable "launch_template" {
  description = "Specifies a Launch Template to configure the instance."
  type = object({
    id      = optional(string)
    name    = optional(string)
    version = optional(string)
  })
  default = null
}

variable "capacity_reservation_specification" {
  description = "Describes an instance's Capacity Reservation targeting option."
  type = object({
    capacity_reservation_preference = optional(string)
    capacity_reservation_target = optional(object({
      capacity_reservation_id                 = optional(string)
      capacity_reservation_resource_group_arn = optional(string)
    }))
  })
  default = null
}

variable "cpu_options" {
  description = "The CPU options for the instance."
  type = object({
    amd_sev_snp      = optional(string)
    core_count       = optional(number)
    threads_per_core = optional(number)
  })
  default = null
}

variable "credit_specification" {
  description = "Configuration block for customizing the credit specification of the instance."
  type = object({
    cpu_credits = optional(string)
  })
  default = null
}

variable "enclave_options" {
  description = "Enable Nitro Enclaves on launched instances."
  type = object({
    enabled = optional(bool)
  })
  default = null
}

variable "maintenance_options" {
  description = "Maintenance and recovery options for the instance."
  type = object({
    auto_recovery = optional(string)
  })
  default = null
}

variable "private_dns_name_options" {
  description = "Options for the instance hostname."
  type = object({
    enable_resource_name_dns_aaaa_record = optional(bool)
    enable_resource_name_dns_a_record    = optional(bool)
    hostname_type                        = optional(string)
  })
  default = null
}

variable "instance_market_options" {
  description = "Describes the market (purchasing) option for the instances."
  type = object({
    market_type = optional(string)
    spot_options = optional(object({
      instance_interruption_behavior = optional(string)
      max_price                      = optional(string)
      spot_instance_type             = optional(string)
      valid_until                    = optional(string)
    }))
  })
  default = null
}
