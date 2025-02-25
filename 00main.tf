terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.21.0"
    }
  }
}

provider "google" {
  credentials = var.credentials
  project     = var.project
  region      = var.region
}


module "instance_vm" {
  source = "./modules/vm"
  name_instance = var.name_instance
  machine_type = var.machine_type 
  credentials = var.credentials
  project = var.project
  region = var.region
}

module "storage" {
  source = "./modules/storage"
  project = var.project
}