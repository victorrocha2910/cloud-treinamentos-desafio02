data "aws_ami" "aws-linux" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"

    values = [
      "amzn-ami-hvm-*-x86_64-gp2",
    ]
  }
}
