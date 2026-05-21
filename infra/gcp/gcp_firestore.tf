resource "google_firestore_database" "default" {
  name     = "(default)"
  location_id = "us-central"
  project  = "<TU_PROJECT_ID>"
  type     = "NATIVE"
}