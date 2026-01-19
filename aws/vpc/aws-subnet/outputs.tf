output "vpc_id" {
  description = "The VPC ID"
  value       = aws_subnet.this.vpc_id
}

output "cidr_block" {
  description = "The IPv4 CIDR block of the subnet"
  value       = aws_subnet.this.cidr_block
}

output "ipv6_cidr_block" {
  description = "The IPv6 CIDR block of the subnet"
  value       = aws_subnet.this.ipv6_cidr_block
}

output "availability_zone" {
  description = "The availability zone of the subnet"
  value       = aws_subnet.this.availability_zone
}

output "availability_zone_id" {
  description = "The availability zone ID of the subnet"
  value       = aws_subnet.this.availability_zone_id
}
