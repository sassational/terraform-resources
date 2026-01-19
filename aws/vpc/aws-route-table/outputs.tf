output "route_table_id" {
  description = "The ID of the route table"
  value       = aws_route_table.this.id
}

output "route_table_arn" {
  description = "The ARN of the route table"
  value       = aws_route_table.this.arn
}

output "route_table_owner_id" {
  description = "The ID of the AWS account that owns the route table"
  value       = aws_route_table.this.owner_id
}

output "route_table_tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags"
  value       = aws_route_table.this.tags_all
}

output "vpc_id" {
  description = "The VPC ID associated with the route table"
  value       = aws_route_table.this.vpc_id
}
