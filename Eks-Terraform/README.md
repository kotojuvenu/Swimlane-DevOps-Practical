# EKS creation using Terraform with min 2 nodes and max 4 nodes at Scale
A sample repository to create EKS on AWS using Terraform.

### Prerequisites

* Create a AWS account.
* Create an IAM user with programmable access and make a note of the access and secret keys.
* Install aws cli and configure above created IAM user access ID and Keys
* Install terraform 

### Install AWS CLI 

As the first step, you need to install AWS CLI as we will use the AWS CLI (`aws configure`) command to connect Terraform with AWS in the next steps.

Follow the below link to Install AWS CLI.
```
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
```
### Below steps will work taken from above url
for ubuntu already python is installed if not installed python install before pipx

#### Install aws - cli for aws infra to Connect with Terraform provide appropriate access to the Role.

sudo apt -y update

sudo apt -y install unzip curl

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

Configure Keys of aws - cli for aws infra accessing
aws configure provide the keys, password, region.



### Install Terraform

Next, Install Terraform using the below link.
```
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli
```

### Initialize Terraform

Clone the repository and Run `terraform init`. This will intialize the terraform environment for you and download the modules, providers and other configuration required.

### Optionally review the terraform configuration

Run `terraform plan` to see the configuration it creates when executed.

### Finally, Apply terraform configuation to create EKS cluster with VPC 

`terraform apply`
