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
  oauthclient_secret = "Sv7h7CKlI6Yb13qiVh1rV11MOvZ1zULTPniedCw3Vqs"
  aws_region = "us-east-1"

}

