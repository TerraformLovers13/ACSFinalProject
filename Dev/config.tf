terraform {
  backend "s3" {
    bucket = "dev-terraformlovers"       // Bucket where to SAVE Terraform State
    key    = "terraform/terraform.tfstate" // Object name in the bucket to SAVE Terraform State
    region = "us-east-1"                 // Region where bucket is created
  }
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      #version = "~> 3.27"
    }
  }
  # required_version = "~> 1.1.5" # 1.1.5 or above and below 1.2.0
}