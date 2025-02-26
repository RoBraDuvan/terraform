output "cluster_name" {
    value = google_container_cluster.primary.name
}

output "cluster_endpoint" {
    value = google_container_cluster.primary.endpoint
}

output "cluster_master_version" {
    value = google_container_cluster.primary.master_version
}

output "cluster_node_version" {
    value = google_container_cluster.primary.node_version
}

output "cluster_location" {
    value = google_container_cluster.primary.location
}

output "cluster_min_master_version" {
    value = google_container_cluster.primary.min_master_version
}

output "cluster_master_auth" {
    value = google_container_cluster.primary.master_auth
}

output "cluster_master_auth_client_certificate" {
    value = google_container_cluster.primary.master_auth.0.client_certificate
}

output "cluster_master_auth_client_key" {
    value = google_container_cluster.primary.master_auth.0.client_key
}

output "cluster_master_auth_cluster_ca_certificate" {
    value = google_container_cluster.primary.master_auth.0.cluster_ca_certificate
}