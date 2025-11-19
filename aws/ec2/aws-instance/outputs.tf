output "id" {
  description = "The ID of the instance."
  value       = aws_instance.this.id
}

output "arn" {
  description = "The ARN of the instance."
  value       = aws_instance.this.arn
}

output "instance_state" {
  description = "The state of the instance (e.g., running, stopped, terminated)."
  value       = aws_instance.this.instance_state
}

output "outpost_arn" {
  description = "The ARN of the Outpost the instance is assigned to."
  value       = aws_instance.this.outpost_arn
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_instance.this.tags_all
}

output "public_ip" {
  description = "The public IP address assigned to the instance, if applicable."
  value       = aws_instance.this.public_ip
}

output "public_dns" {
  description = "The public DNS name assigned to the instance."
  value       = aws_instance.this.public_dns
}

output "private_dns" {
  description = "The private DNS name assigned to the instance."
  value       = aws_instance.this.private_dns
}

output "primary_network_interface_id" {
  description = "The ID of the instance's primary network interface."
  value       = aws_instance.this.primary_network_interface_id
}

output "root_block_device" {
  description = "Root block device information, including volume_id, device_name, and tags_all."
  value       = aws_instance.this.root_block_device
}

output "ebs_block_device" {
  description = "EBS block device information, including volume_id and tags_all."
  value       = aws_instance.this.ebs_block_device
}

output "password_data" {
  description = "Base-64 encoded encrypted password data for the instance. Only exported if get_password_data is true."
  value       = aws_instance.this.password_data
  sensitive   = true
}

output "capacity_reservation_specification" {
  description = "Capacity reservation specification of the instance."
  value       = aws_instance.this.capacity_reservation_specification
}

output "spot_instance_request_id" {
  description = "The ID of the Spot Instance request, if applicable."
  value       = aws_instance.this.spot_instance_request_id
}

output "instance_lifecycle" {
  description = "Indicates whether this is a Spot Instance or a Scheduled Instance."
  value       = aws_instance.this.instance_lifecycle
}
