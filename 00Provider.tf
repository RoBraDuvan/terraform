terraform {
  required_providers {
    google-beta = {
      source = "hashicorp/google-beta"
      version = "6.21.0"
    }
  }
}

provider "google" {
  credentials = var.credentials_project
  project = "consiti-bootcamp"
  region  = "us-central1"
  zone    = "us-central1-a"
}


