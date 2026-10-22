terraform {
  cloud {
    organization = "mg0x7BE"

    workspaces {
      name = "classicq-server-infra"
    }
  }

  required_providers {
    hcloud = {
      source  = "hetznercloud/hcloud"
      version = "~> 1.0"
    }
  }
}

provider "hcloud" {}
