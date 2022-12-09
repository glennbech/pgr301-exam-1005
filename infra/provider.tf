terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.40.0"
    }
  }
  backend "s3" {
      bucket = "analytics-1005"
      key    = "analytics-1005.state"
      region = "eu-west-1"
    }

}