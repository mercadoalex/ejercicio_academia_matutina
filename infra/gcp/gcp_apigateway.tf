resource "google_api_gateway_api" "api" {
  api_id = "serverless-api"
  display_name = "Serverless API"
}

resource "google_api_gateway_api_config" "api_config" {
  api      = google_api_gateway_api.api.id
  api_config_id = "v1"
  openapi_documents {
    document {
      path     = "openapi.yaml" # Debes proveer este archivo
      contents = file("openapi.yaml")
    }
  }
}

resource "google_api_gateway_gateway" "gateway" {
  gateway_id = "serverless-gateway"
  api_config = google_api_gateway_api_config.api_config.id
  region     = "us-central1"
}