terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}



resource "digitalocean_droplet" "ubuntuvm" {
  image    = "ubuntu-22-04-x64"
  name     = "ubuntuvm"
  region   = var.region
  size     = "s-1vcpu-1gb"
  ssh_keys = [data.digitalocean_ssh_key.sshkeys.fingerprint]
}


data "digitalocean_ssh_key" "sshkeys" {
  name = var.ssh_keys_name
}



resource "digitalocean_project" "labDevops" {
  name        = "labDevops"
  description = "A project to represent development resources."
  purpose     = "laboratory of devops"
  environment = "Development"
  resources   = [digitalocean_droplet.ubuntuvm.urn ]
}


variable "region" {
  default = ""
}

variable "do_token" {
  default = ""
}

variable "ssh_keys_name" {
  default = ""
}


output "ubuntuvm_ip" {
  value=  digitalocean_droplet.ubuntuvm.ipv4_address  
}

