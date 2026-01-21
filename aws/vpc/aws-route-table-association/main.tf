resource "aws_route_table_association" "this" {
  
  route_table_id = var.route_table_id
  subnet_id      = var.subnet_id != "" ? var.subnet_id : null
  gateway_id     = var.gateway_id != "" ? var.gateway_id : null

}
