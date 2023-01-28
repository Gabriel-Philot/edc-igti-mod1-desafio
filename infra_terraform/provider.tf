# Centralizing the state control file of Terraform
terraform {
  backend "s3" {
    bucket = "terraform-state-igti-edc-mo1-415658869338"
    key ="state/igti/edc/mod1_desafio/terraform.tfstate"  
  }
}