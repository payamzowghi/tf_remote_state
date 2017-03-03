# AWS remote-state for terraform
A lightweight remote-state module for Terraform.

##Usage

source "aws_s3_bucket" "remote_state" {                                   
  bucket = "${var.prefix}-remote_state-${var.environment}"
  acl    = "authenticated-read"

  versioning {
    enabled = true
  }

  tags {
    Name = "${var.prefix}-remote_state-${var.environment}"
    Environment = "${var.environment}"
  }
}

See `interface.tf` for additional configurable variables.

## License

MIT
