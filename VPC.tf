resource "google_compute_network" "vpc_network" {
  project                 = var.project_name
  name                    = "vpc-network"
  auto_create_subnetworks = true
  mtu                     = 1460
}

resource "google_compute_network" "vpc_network_dev" {
  project                 = var.project_name
  name                    = "vpc-network-dev"
  auto_create_subnetworks = true
  mtu                     = 1460
}