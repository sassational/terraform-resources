output "id" {
  description = "The Spot Instance Request ID"
  value       = aws_spot_instance_request.this.id
}

output "tags_all" {
  description = "A map of tags assigned to the resource, including those inherited from the provider default_tags"
  value       = aws_spot_instance_request.this.tags_all
}

output "spot_instance_id" {
  description = "The Instance ID fulfilling the Spot Instance request (informational only)"
  value       = aws_spot_instance_request.this.spot_instance_id
}

output "spot_bid_status" {
  description = "The current bid status of the Spot Instance Request (informational only)"
  value       = aws_spot_instance_request.this.spot_bid_status
}

output "spot_request_state" {
  description = "The current request state of the Spot Instance Request (informational only)"
  value       = aws_spot_instance_request.this.spot_request_state
}

output "public_ip" {
  description = "The public IP address assigned to the instance (informational only)"
  value       = aws_spot_instance_request.this.public_ip
}

output "private_ip" {
  description = "The private IP address assigned to the instance (informational only)"
  value       = aws_spot_instance_request.this.private_ip
}

output "public_dns" {
  description = "The public DNS name assigned to the instance (informational only)"
  value       = aws_spot_instance_request.this.public_dns
}

output "private_dns" {
  description = "The private DNS name assigned to the instance (informational only)"
  value       = aws_spot_instance_request.this.private_dns
}
