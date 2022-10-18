terraform {
  backend "s3" {
    bucket = "b50-tf-state-bucket"
    key    = "project/env/terrafom.tfstate"
    region = "us-east-1"
   }
}

provider "aws" {
    region = "us-east-1"
}