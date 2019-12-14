# 最新のAMIを取得する
data "aws_ssm_parameter" "amazon_linux2_ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}


resource "aws_instance" "server" {
  ami                         = data.aws_ssm_parameter.amazon_linux2_ami.value
  instance_type               = var.instance_type
  monitoring                  = true
  subnet_id                   = data.terraform_remote_state.vpc.outputs.public_subnet_1a_id # terraform 0.12からoutputsを付けるように変更された
  associate_public_ip_address = true
  key_name                    = aws_key_pair.key.id
  vpc_security_group_ids = [
    aws_security_group.info_app_sg.id
  ]

  tags = {
    Name = "info-app"
  }
}

output "server_public_dns" {
  value = aws_instance.server.public_dns
}

