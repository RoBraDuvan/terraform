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


# module "vm" {
#   source = "./modules/vm"
#   name_instance = var.name_instance
#   credentials = var.credentials
#   project = var.project
#   machine_type = var.machine_type
#   region = var.region
# }

module "storage" {
  source = "./modules/storage"
  project = var.project
}

# module "cluster" {
#   source = "./modules/cluster"
#   project = var.project
#   region = var.region
# }

# module "pub" {
#   source = "./modules/pub"
#   project = var.project
#   region = var.region
# }

module "db" {
  source = "./modules/db"
  password = var.password
}