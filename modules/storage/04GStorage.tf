resource "google_storage_bucket" "bucket-bootcamp" {
    name = "${var.project}bucket-bootcamp-2025-01"
    location = "us-central1"
    storage_class = "STANDARD"
    force_destroy = true

    uniform_bucket_level_access = true
}

resource "google_storage_bucket_iam_member" "bucket-bootcamp-iam" {
    bucket = google_storage_bucket.bucket-bootcamp.name
    role = "roles/storage.objectViewer"
    member = "allUsers"
}

resource "google_storage_bucket_iam_member" "bucket-bootcamp-iam-2" {
    bucket = google_storage_bucket.bucket-bootcamp.name
    role = "roles/storage.objectAdmin"
    member = "user:duvan_andres@consiti.com"
}

resource "google_storage_bucket_object" "object-bootcamp" {
    name = "object-bootcamp"
    bucket = google_storage_bucket.bucket-bootcamp.name
    source = "./modules/storage/index.html"
}

