resource "aws_key_pair" "this" {

  key_name        = var.key_name
  key_name_prefix = var.key_name_prefix

  public_key = var.public_key

  tags = var.tags

  lifecycle {
    precondition {
      condition     = !(var.key_name != null && var.key_name_prefix != null)
      error_message = "Conflict detected: You cannot define both 'key_name' and 'key_name_prefix' at the same time for the AWS Key Pair. Please set one to null."
    }
  }
}
