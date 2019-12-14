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

  tags = {
    Name = "info-app"
  }
}
