resource "google_sql_database_instance" "sql-cloud-bootcamp" {
    name = "sql-cloud-bootcamp"
    database_version = "MYSQL_5_7"
    region = "us-central1"
    deletion_protection = false
    settings {
        tier = "db-f1-micro"
        backup_configuration {
            enabled = true
        }
        ip_configuration {
            ipv4_enabled = true
        }
    }

}

resource "google_sql_user" "sql-cloud-bootcamp-user" {
    name = "sql-cloud-bootcamp-user"
    instance = google_sql_database_instance.sql-cloud-bootcamp.name
    password = var.password
    host = "%"
}

resource "google_sql_database" "sql-cloud-bootcamp-db" {
    name = "sql-cloud-bootcamp-db"
    instance = google_sql_database_instance.sql-cloud-bootcamp.name
    charset = "utf8"
    collation = "utf8_general_ci"
}