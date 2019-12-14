terraform {
  backend "s3" {
    bucket = "info-app-terraform"
    key    = "infra/vpc/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
