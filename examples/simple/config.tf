#=============================#
# AWS Provider Settings       #
#=============================#
provider "aws" {
  region  = var.region
  profile = var.profile

  # Make it faster by skipping something
  skip_get_ec2_platforms      = true
  skip_metadata_api_check     = true
  skip_region_validation      = true
  skip_credentials_validation = true
  skip_requesting_account_id  = true
}

variable "region" {
  description = "AWS Region"
  default     = "us-east-1"
}

variable "profile" {
  description = "AWS Profile"
  default     = "bb-dev-deploymaster"
}

#=============================#
# Backend Config (partial)    #
#=============================#
terraform {
  required_version = ">= 0.12.18"
}

data "aws_caller_identity" "current" {}