resource "google_compute_instance" "instancia2" {
    name = "instancia-bootcamp-02"
    machine_type = "e2-micro"
    zone = "us-central1-a"

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
