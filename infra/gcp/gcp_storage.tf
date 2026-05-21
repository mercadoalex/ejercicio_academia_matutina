resource "google_storage_bucket" "frontend" {
  name     = "gcp-serverless-frontend-bucket"
  location = "US"
  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}