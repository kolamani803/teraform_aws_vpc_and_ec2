terraform {
  backend "s3" {
    bucket = "dltraining"  # Change this to your S3 bucket name
    key    = "tf_files/terraform.tfstate"
    region = "ap-south-1"
  }
}
