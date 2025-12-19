terraform {
  required_providers {
    minecraft = {
      source = "markti/minecraft"
      version = "0.0.28"
    }
  }
}

locals {
  address = "${var.host}:${var.rcon_port}"
}

provider "minecraft" {
  address  = local.address
  password = var.rcon_password
}