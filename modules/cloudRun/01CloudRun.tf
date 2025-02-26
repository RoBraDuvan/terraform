resource "google_cloud_run_service" "default" {
    name     = "example-service"
    location = "${var.region}-a"

    template {
        spec {
            containers {
                image = "gcr.io/your-project-id/your-image:tag"
                resources {
                    limits = {
                        cpu    = "1000m"
                        memory = "256Mi"
                    }
                    requests = {
                        cpu    = "500m"
                        memory = "128Mi"
                    }
                }

                ports {
                    container_port = 8080
                }

                
            }
        }
    }

    traffic {
        percent         = 100
        latest_revision = true
    }
}

resource "google_project_iam_member" "run_invoker" {
    project = var.project
    role    = "roles/run.invoker"
    member  = "allUsers"
}