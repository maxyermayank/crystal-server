resource "aws_security_group" "default" {
  name        = "${local.name}-remote-sg"
  description = "Security Group for DEV environment Crystal Report Server"
  vpc_id      = var.vpc_id
  tags          = local.global_tags
  # WinRM access from anywhere
  ingress {
    from_port   = 5985
    to_port     = 5985
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # outbound internet access
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
