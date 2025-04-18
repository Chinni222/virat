# Setup our aws provider
variable "region" {
  default = "eu-west-1"
}
provider "aws" {
  region = "${var.region}"
}

terraform {
  backend "s3" {
    region = "eu-west-1"
    key = "base/terraform.tfstate"
  }
  assume_role {
    role_arn = "arn:aws:iam::085016483908:role/your-circleci-oidc-role"
  }
}
