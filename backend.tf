terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "wasath-personal"

    workspaces {
      name = "ws-azure-multi-tier-app-terraform-dev-001"
    }
  }
}