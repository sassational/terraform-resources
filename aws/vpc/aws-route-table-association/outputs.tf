output "association_id" {
  description = "The ID of the route table association"
  value       = aws_route_table_association.this.id
}

output "route_table_id" {
  description = "The ID of the routing table"
  value       = aws_route_table_association.this.route_table_id
}

output "subnet_id" {
  description = "The subnet ID associated (if applicable)"
  value       = aws_route_table_association.this.subnet_id
}

output "gateway_id" {
  description = "The gateway ID associated (if applicable)"
  value       = aws_route_table_association.this.gateway_id
}
