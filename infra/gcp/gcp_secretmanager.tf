resource "google_secret_manager_secret" "api_secret" {
  secret_id = "api-secret"
  replication {
    auto {}
  }
}

resource "google_secret_manager_secret_version" "api_secret_version" {
  secret      = google_secret_manager_secret.api_secret.id
  secret_data = "dcb13cdaa5a16f57da000dd1346b76f404cbdf12"
}