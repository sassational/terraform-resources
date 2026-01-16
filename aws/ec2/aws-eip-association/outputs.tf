output "id" {
  description = "ID that represents the association of the Elastic IP address with an instance."
  value       = aws_eip_association.this.id
}
