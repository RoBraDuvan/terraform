resource "google_compute_instance" "instancia2" {
    name = "${var.name_instance}-2"
    machine_type = var.machine_type[0]
    zone = "${var.region}-a"

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-11-bullseye-v20250212"
            size = 50
            type = "pd-standard"
        }
    }

    network_interface {
        network = "default"
        subnetwork = "default"
        access_config {
            // Ephemeral IP
        }
    }
}   
