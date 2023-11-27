# AWS Infrastructure with Terraform

## Introduction

This Terraform configuration sets up a basic AWS infrastructure, including a VPC with public and private subnets, EC2 instances running a web server, and an Application Load Balancer (ALB) to make the web application reachable from the internet.

## Prerequisites

- **Terraform Installed:** Ensure that Terraform version 1.0.0 or later is installed on your machine.
- **AWS Account:** You need an AWS account with the necessary permissions. Make sure to configure your AWS credentials.

## Instructions

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/utaccess1808/assessment2023.git
   cd your-repository

## I have used Personal access token(PAT) for github access, use token when prompt , PAT: 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

2. Navigate to Terraform Directory
 # bash scripting or use github CLI
cd terraform

For your new AWS account , know your Aws ec2 key pair name 
Change in terraform.tfvars.yaml file 

ec2_key_name: "your-key-pair-name"

Replace "your-key-pair-name"   with the name of your AWS key pair

## You can find AWS key pair as follows:
Open the Amazon EC2 console at https://console.aws.amazon.com/ec2/ . In the navigation pane, under Network & Security, choose Key Pairs. If not created , create the key pair

3. Initialize Terraform
# bash scripting
terraform init

4. Apply the Terraform Configuration:
# bash scripting
terraform apply
Terraform will show you the changes it plans to make. Type yes when prompted to apply the changes

5. Run the Web Application Locally:
# bash scripting
cd web_app
npm install
npm start

Open a web browser and navigate to http://localhost:3000 to see the web application running locally on your machine

6. Access the Web Application on AWS:
After Terraform has finished applying the configuration, it will display information about the created resources. Look for the ALB DNS name in the output
Use the ALB DNS name to access the web application in a web browser

7. Cleanup 
# bash scripting
terraform destroy
Type yes when prompted.


This README provides a step-by-step guide for setting up the infrastructure and running the web application. The folder structure organizes your code into modules for better maintainability.
 thus non devops guy can follow the instructions even if they are not familiar with Terraform or AWS.


# Explanation
1. terraform/ (Main Folder):
This is the main folder for your Terraform configuration. It contains the primary Terraform files and directories.

main.tf: This is the main Terraform configuration file where you define your AWS infrastructure using Terraform syntax.

variables.tf: This file is used to declare input variables that can be customized by the user. In this example, it likely contains variables such as VPC CIDR block, EC2 AMI, instance type, etc.

outputs.tf: This file is used to declare output values that users may want to see or use after the Terraform configuration is applied. In this example, it outputs information like VPC ID, subnet IDs, and ALB DNS name.

terraform.tfvars.yaml: This is a YAML file where you specify values for the variables declared in variables.tf. It's used to customize the Terraform configuration without modifying the actual code.

modules/: This directory contains sub-modules that break down the Terraform configuration into smaller, reusable components.

2. modules/vpc/ (VPC Module):
This sub-directory contains files specific to the VPC module.

main.tf: The main configuration file for the VPC module, which likely uses the terraform-aws-modules/vpc/aws module to create a VPC with public and private subnets.

variables.tf: Declaration of input variables specific to the VPC module.

outputs.tf: Declaration of output values specific to the VPC module.

3. modules/ec2/ (EC2 Module):
This sub-directory contains files specific to the EC2 module.

main.tf: The main configuration file for the EC2 module, which likely uses the terraform-aws-modules/ec2-instance/aws module to create EC2 instances.

variables.tf: Declaration of input variables specific to the EC2 module.

outputs.tf: Declaration of output values specific to the EC2 module.

4. modules/alb/ (ALB Module):
This sub-directory contains files specific to the ALB module.

main.tf: The main configuration file for the ALB module, which likely uses the terraform-aws-modules/alb/aws module to create an Application Load Balancer.

5. web_app/ (Web Application Code):
This directory contains the code for your web application.

app.js:  code for a basic Node.js web application.

package.json: Configuration file for Node.js packages. It includes information about the project and its dependencies.



