resource "aws_security_group" "info_app_sg" {
  name   = "info_app_sg"
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id

  tags = {
    Name = "info-app-sg"
  }
}

resource "aws_security_group_rule" "ingress" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["123.255.234.116/32"]
  security_group_id = aws_security_group.info_app_sg.id
}

resource "aws_security_group_rule" "egress" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.info_app_sg.id
}

