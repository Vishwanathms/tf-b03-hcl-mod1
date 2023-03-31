terraform {
  /*backend "s3" {
    #Bucket is created manually for backend.
    bucket = "vishwa-tf-b03-hcl"
    profile = "tf-b3"
  }*/
  cloud {
    organization = "Vishwacloudlab"
    workspaces {
      name = "learn-terraform-cloud-migrate"
    }
  }
}

provider "aws" {
    region = var.region
    #profile = "tf-b3"
    access_key = "AKIAYTSG2BGYRJRTVDTQ"
    secret_key = var.secret_key
}

module "vm01" {
    #source = "./ec2"
    source =  git::"https://github.com/Vishwanathms/tf-templates-aws.git?ref=master"
    ami = var.ami
    instance_type = var.instance_type
    vm_name = var.vm_name
    user_tag = var.user_tag
    env_tag = var.env_tag
}

