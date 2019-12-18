terraform {
  backend "s3" {
    bucket = "info-app-terraform"
    key    = "infra/s3/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
