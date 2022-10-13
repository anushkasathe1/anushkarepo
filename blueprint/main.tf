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
  GENESYSCLOUD_OAUTHCLIENT_ID = ${{ secrets.GENESYSCLOUD_OAUTHCLIENT_ID_DEV }}
  GENESYSCLOUD_OAUTHCLIENT_SECRET = ${{ secrets.GENESYSCLOUD_OAUTHCLIENT_SECRET_DEV }}
  aws_region = "us-east-1"

}

resource "genesyscloud_routing_wrapupcode" "win" {
  name = "Example wrap up code"
}
