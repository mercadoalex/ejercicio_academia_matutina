resource "google_project_iam_member" "function_firestore" {
  project = "<TU_PROJECT_ID>"
  role    = "roles/datastore.user"
  member  = "serviceAccount:${google_cloudfunctions_function.api_handler.service_account_email}"
}

resource "google_project_iam_member" "function_secretmanager" {
  project = "<TU_PROJECT_ID>"
  role    = "roles/secretmanager.secretAccessor"
  member  = "serviceAccount:${google_cloudfunctions_function.api_handler.service_account_email}"
}