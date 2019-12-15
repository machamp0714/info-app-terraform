resource "aws_security_group" "db_sg" {
  name        = "info_app_db_sg"
  description = "DB"
  vpc_id      = data.terraform_remote_state.vpc.outputs.vpc_id

  tags = {
    Name = "info_app_db_sg"
  }

  ingress {
    from_port = 3306
    to_port   = 3306
    protocol  = "tcp"

    security_groups = [
      data.terraform_remote_state.ec2.outputs.web_sg_id
    ]
  }
}
