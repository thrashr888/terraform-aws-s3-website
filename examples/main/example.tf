
provider "aws" {}

module "s3-website" {
  source  = "thrashr888/s3-website/aws"
  version = "0.3.0"

  bucket_name = "example-website"
}

output "website_endpoint" {
  value = "${module.s3-website.website_endpoint}"
}