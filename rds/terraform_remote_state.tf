data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "info-app-terraform"
    key    = "infra/vpc/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

data "terraform_remote_state" "ec2" {
  backend = "s3"

  config = {
    bucket = "info-app-terraform"
    key    = "infra/ec2/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
