# Terraform AWS S3 Website

A Terraform module for publishing static websites on AWS' S3.

Requires two files to be present in the same directory as this module is used:

- `index.html` - The homepage of the website.
- `error.html` - The page shown when errors occur.

## Inputs

**bucket_name**: The name of the AWS S3 bucket this website will be published to.

## Outputs

**website_endpoint**: The public url of this website.

## Usage example

```hcl
variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "aws_default_region" {}

provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.aws_default_region}"
}

module "s3-website" {
  source  = "thrashr888/s3-website/aws"
  version = "0.2.0"

  bucket_name = "example-website"
}

output "website_endpoint" {
  value = "${module.s3-website.website_endpoint}"
}
```