# configure aws provider
provider "aws" {
  region  = "us-east-1"
  profile = "terraform-user"
}

# stores the terraforma states files in S3
terraform {
  backend "s3" {
    bucket  = "aosnote-tutorial-remote-terraform-state-files"
    key     = "terraform.tfstate.dev"
    region  = "us-east-1"
    profile = "terraform-user"
  }
}
