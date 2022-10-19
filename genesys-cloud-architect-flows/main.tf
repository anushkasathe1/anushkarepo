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
filepath = "https://bitbucket.org/anushkasathe/automatedflows/raw/707faa02f826731708f1498f3196c53af1f5e6d1/Archy%20Hello%20World_v1-0.yaml"
}

resource "genesyscloud_flow" "flow1" {  
filepath = "https://bitbucket.org/anushkasathe/automatedflows/raw/707faa02f826731708f1498f3196c53af1f5e6d1/Archy%20Hello%20World_v1-0.yaml"
}
resource "genesyscloud_flow" "flow2" {  
filepath = "https://bitbucket.org/anushkasathe/automatedflows/raw/707faa02f826731708f1498f3196c53af1f5e6d1/Archy%20Hello%20World_v1-0.yaml"
}
resource "genesyscloud_flow" "flow3" {  
filepath = "https://bitbucket.org/anushkasathe/automatedflows/raw/707faa02f826731708f1498f3196c53af1f5e6d1/Archy%20Hello%20World_v1-0.yaml"
}

       
