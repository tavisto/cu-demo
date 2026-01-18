# cu-demo-terraform

## Resources:

https://cloud.google.com/sdk/docs/install
https://cloud.google.com/docs/terraform
https://registry.terraform.io/providers/hashicorp/google/latest/docs/guides/getting_started


## setup

1) clone this repo
1) install google-cli `brew install gcloud-cli`
1) ./cli/setup.sh

## Cli demo

        ./cli/run.sh server1
        ./cli/cleanup.sh server1

## Terraform demo

1) install terraform `brew install terraform`
1) generate account json file `./terraform/setup.sh <service-account-name>`
1) terraform init
1) terraform plan
1) terraform destroy


## Commands to run

Show the version on the server
`lsb_release -a`

Show the file systems

`df -h`

List out the block devices
`lsblk`
