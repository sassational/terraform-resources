output "id" {
  description = "Volume ID (e.g., vol-59fcb34e)"
  value       = aws_ebs_volume.this.id
}

output "arn" {
  description = "Volume ARN (e.g., arn:aws:ec2:us-east-1:123456789012:volume/vol-59fcb34e)"
  value       = aws_ebs_volume.this.arn
}

output "create_time" {
  description = "Timestamp when volume creation was initiated"
  value       = aws_ebs_volume.this.create_time
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block"
  value       = aws_ebs_volume.this.tags_all
}
