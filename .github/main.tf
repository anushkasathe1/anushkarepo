terraform {

  backend "remote" {
    organization = "genesys-org"

    workspaces {
      prefix = "genesys_flows_dev"
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
}

resource "genesyscloud_routing_wrapupcode" "win" {
  name = "Example wrap up code"
}