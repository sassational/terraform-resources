resource "aws_ebs_volume" "this" {

  availability_zone = var.availability_zone

  size       = var.size
  type       = var.type
  iops       = var.iops
  throughput = var.throughput

  encrypted  = var.encrypted
  kms_key_id = var.kms_key_id

  snapshot_id                = var.snapshot_id
  volume_initialization_rate = var.volume_initialization_rate

  multi_attach_enabled = var.multi_attach_enabled
  outpost_arn          = var.outpost_arn
  final_snapshot       = var.final_snapshot

  tags = var.tags

}
