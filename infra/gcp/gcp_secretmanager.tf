resource "google_secret_manager_secret" "api_secret" {
  secret_id = "api-secret"
  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret_version" "api_secret_version" {
  secret      = google_secret_manager_secret.api_secret.id
  secret_data = "your-api-key"
}