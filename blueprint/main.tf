terraform {

  backend "remote" {
    organization = "genesys-org"

    workspaces {
      name = "new_user_workspace"
    }
  }

  required_providers {
    genesyscloud = {
      source = "mypurecloud/genesyscloud"
    }
  }
}

provider "genesyscloud" {
  sdk_debug = true
  aws_region = dca
}

resource "genesyscloud_routing_wrapupcode" "win" {
  name = "Example wrap up code"
}
