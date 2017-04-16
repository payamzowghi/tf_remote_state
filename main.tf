resource "aws_s3_bucket" "remote_state" {
  bucket = "${var.prefix}_remote_state_${var.environment}"
  acl    = "authenticated-read"
 
  versioning {
    enabled = true
  }

  tags {
    Name = "${var.prefix}_remote_state_${var.environment}"
    Environment = "${var.environment}"
  }
}
