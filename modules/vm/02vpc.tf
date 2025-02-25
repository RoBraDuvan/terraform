resource "google_compute_network" "red-bootcamp" {
    name = "${var.project}-red-bootcamp"
    auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subred-bootcamp" {
    name = "${var.project}-subred-bootcamp"
    network = google_compute_network.red-bootcamp.self_link
    ip_cidr_range = "192.168.1.0/24"
    region = var.region
}