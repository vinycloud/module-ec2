terraform {
  backend "s3" {
    bucket = "descomplicando-terraform-fialho-tfstates"
    key    = "module/terraform-test.tfstate"
    region = "us-east-1"
  }
}