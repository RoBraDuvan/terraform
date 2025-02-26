resource "google_container_cluster" "primary" {
    name     = "${var.project}-cluster"
    location = "${var.region}-a"

    initial_node_count = 1

    deletion_protection = false

    node_config {
        machine_type = "e2-medium"

        oauth_scopes = [
            "https://www.googleapis.com/auth/cloud-platform",
        ]
    }
}

