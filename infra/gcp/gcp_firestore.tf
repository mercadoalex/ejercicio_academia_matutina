resource "google_firestore_database" "default" {
  name     = "(default)"
  location_id = "us-central"
  project  = var.project_id
  type = "FIRESTORE_NATIVE"
}