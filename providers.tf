terraform {
  backend "s3" {
    bucket         = "sankar6-terraform-remote-state" 
    key            = "terraform.tfstate" 
    region         = "eu-north-1"
    dynamodb_table = "sankar-terraform-state-lock" 
  }
}
provider "aws" {
  region = "eu-north-1"
  # Credentials can be specified here or via environment variables
}
