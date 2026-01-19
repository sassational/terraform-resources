resource "aws_internet_gateway" "this" {
  vpc_id = var.vpc_id
  region = var.region

  tags = merge(
    var.tags,
    {
      Name = var.name
    }
  )
}
