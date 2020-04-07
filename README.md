# tf-aws-ssh-keypair terraform module

Terraform module to create an AWS SSH key pair

## Features
* Generates a secure RSA private key
* Encodes the private key as PEM
* Downloads the private locally and updates the local key file permission to 0600
* Creates an AWS SSH keypair

## Dependencies
* none

## Usage
```
module "ssh_keypair_aws" {
  source = "git@github.com:rewardinsight/tf-aws-ssh-keypair.git?ref=master"

  create    = "${var.create}"
  name      = "${var.name}"
  rsa_bits  = "${var.rsa_bits}"
}

```


## Inputs
| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| create | Create Module, defaults to true. | string | `true` | no |
| name | (Optional) Name of AWS keypair that will be created, defaults to "ssh-keypair-aws" appended with random bytes. | string | `ssh-keypair-aws` | no |
| rsa\_bits | (Optional) When algorithm is "RSA", the size of the generated RSA key in bits. Defaults to "2048". | string | `2048` | no |

## Outputs
| Name | Description |
|------|-------------|
| algorithm | - |
| name | - |
| private\_key\_filename | - |
| private\_key\_name | - |
| private\_key\_pem | - |
| public\_key\_openssh | - |
| public\_key\_pem | - |


## Examples
* [simple](/examples/simple)
* [no-provision](/examples/no-provision)
* [advanced](/examples/advanced)

## Authors
* [Brian Macauley](https://github.com/bmacauley-reward) &lt;brian.macauley@rewardinsight.com&gt;

## License
[MIT](/LICENSE)
