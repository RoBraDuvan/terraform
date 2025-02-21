terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "6.21.0"
    }
  }
}

provider "google" {
  credentials = file("account.json")
  project     = "consiti-bootcamp"
  region      = "us-central1"
}
