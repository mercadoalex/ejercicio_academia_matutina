resource "google_storage_bucket" "function_source" {
  name     = "gcp-function-source-bucket"
  location = "US"
}

resource "google_cloudfunctions_function" "api_handler" {
  name        = "api-handler"
  description = "Business logic handler"
  runtime     = "nodejs18"
  entry_point = "handler"
  source_archive_bucket = google_storage_bucket.function_source.name
  source_archive_object = "function-source.zip" # Debes subir este archivo
  trigger_http = true
  available_memory_mb = 128
  environment_variables = {
    FIRESTORE_PROJECT = "<TU_PROJECT_ID>"
  }
}