output "arn" {
  description = "The ARN of the security group."
  value       = aws_security_group.this.arn
}

output "id" {
  description = "The ID of the security group."
  value       = aws_security_group.this.id
}

output "owner_id" {
  description = "The Owner ID."
  value       = aws_security_group.this.owner_id
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags configuration block."
  value       = aws_security_group.this.tags_all
}
