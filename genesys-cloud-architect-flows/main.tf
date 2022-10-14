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
  oauthclient_id     = "339f87f2-1ad0-4bc0-a6b7-96f467852143"
  oauthclient_secret = "YEI8lcO3YEaCgHkyxMOoRKC8Dft-w7c6v9Gv9bv687Q"
  aws_region = "us-east-1"
}


resource "genesyscloud_flow" "flow" {
  depends_on = [
    module.genesys-cloud-architect-flows
  ]  
 filepath = "${path.module}/genesys-cloud-architect-flows/flow.yaml"
}

       