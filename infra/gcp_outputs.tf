output "frontend_bucket_url" {
  value = "https://storage.googleapis.com/${google_storage_bucket.frontend.name}/index.html"
}

output "cloud_function_url" {
  value = google_cloudfunctions_function.api_handler.https_trigger_url
}

output "api_gateway_url" {
  value = google_api_gateway_gateway.gateway.default_hostname
}

output "firestore_database" {
  value = google_firestore_database.default.name
}

output "secret_id" {
  value = google_secret_manager_secret.api_secret.id
}