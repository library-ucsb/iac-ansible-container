provider_github_owner           = "library-ucsb"
aws_region                      = "us-west-2"

github_repo = {
  auto_init                     = false
  description                   = "IaC for the Ansible Container build"
  name                          = "iac-ansible-container"
  visibility                    = "public"
}

# namespace-environment-stage-name-attributes
terraform_s3_backend = {
  namespace                     = "ucsb-library"
  environment                   = "iac-ansible"
  stage                         = "container-build"
  name                          = "terraform"
  attributes                    = [ "state" ]
}