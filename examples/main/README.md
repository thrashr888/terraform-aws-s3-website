# terraform-aws-s3-website Example

This example is the simplest usage of the module.

See [./example.tf](./example.tf) for the Terraform config. There's two files (`index.html` and `error.html`) that serve the basic static website.

Deployment is then simple when using Terraform, given your AWS credentials are set up correctly.

```
$ export AWS_ACCESS_KEY='my-key'
$ export AWS_SECRET_KEY='my-secret'
$ export AWS_DEFAULT_REGION='us-east-1'
$ 
$ terraform plan
$ terraform apply
```