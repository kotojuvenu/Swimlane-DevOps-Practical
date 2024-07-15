# aws-ami-building-with-packer and ansible

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This project is built to create an AMI that is pre-configured (golden amazon linux - 2 AMI) to host a Sample Nginx application with NTP protocal in AWS EC2 instance.


### Built With

The project is built using, -->  AWS resources of AMI using 
* Packer and 
* Ansible


<!-- GETTING STARTED -->
## Getting Started

### Prerequisites

* Create a free tier AWS account.
* Create an IAM user with programmable access and make a note of the access and secret keys.

### Installation

1. Clone the repo
   ```sh
     git clone https://github.com/kotojuvenu/Swimlane-DevOps-Practical.git
   ```
2. [Install Packer] using this url's (https://www.packer.io/docs/install)
3. [Install Ansible]suing this url's (https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)
### Installation of Packer 
#### Add the HashiCorp GPG key.

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

#### Add the official HashiCorp Linux repository.

sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

#### Update and install.

sudo apt-get update && sudo apt-get install packer

#### After installing Packer, verify the installation

packer

===================================

### Installation of Ansible

#### for ubuntu already python is installed if not installed python install before pipx

sudo apt install pipx

pipx install --include-deps ansible 

#### or install ansible-core with below command

pipx install ansible-core

#### Install aws - cli for aws infra accessing

sudo apt -y update

sudo apt -y install unzip curl

curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

unzip awscliv2.zip

sudo ./aws/install

#### Configure Keys of aws - cli for aws infra accessing
aws configure
 provide the keys, password, region.

<!-- USAGE EXAMPLES -->
## Usage

### Creating AMI

The AMI is created using packer.

1. Update the default values of base_ami (amazon linux), subnet_id (with internet access) and security_group_id (allow port 22 from local ip) in the  variables.pkr.hcl to match the ones in your AWS account.
2. cd into the packer folder in the cloned repository.
3. Run the following commands in order
    - packer init .
    - packer fmt .
    - packer validate .
    - packer build .

This will provision the AMI with Nginx and NTP pakages installed golder AMI in you AWS account.

Now, you can use the AMI to launch an EC2 instance which will have the web application pre configured and ready to use.
