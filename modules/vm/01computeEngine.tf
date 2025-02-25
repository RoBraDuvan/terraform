resource "google_compute_instance" "instancia" {
    name = "${var.name_instance}-1"
    machine_type = "e2-micro"
    zone = "${var.region}-a"

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-11-bullseye-v20250212"
        }
    }

    network_interface {
        network = google_compute_network.red-bootcamp.self_link
        subnetwork = google_compute_subnetwork.subred-bootcamp.self_link
        access_config {
            // Ephemeral IP
        }
    }
}   