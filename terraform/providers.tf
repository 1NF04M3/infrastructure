terraform {
  required_providers {
    exoscale = {
      source = "exoscale/exoscale"
    }
    gandi = {
      source = "go-gandi/gandi"
      version = ">= 2.1.0"
    }
  }
}

variable "exoscale_api_key" { type = string }
variable "exoscale_api_secret" { type = string }
variable "gandi_domain" { type=string }
variable "gandi_key" { type=string }

provider "exoscale" {
  key    = var.exoscale_api_key
  secret = var.exoscale_api_secret
}
provider "gandi" {
  key = var.gandi_key
}

