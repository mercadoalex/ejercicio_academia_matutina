# Crea la API de API Gateway usando el proveedor google-beta
resource "google_api_gateway_api" "api" {
  provider     = google-beta
  api_id       = "serverless-api"         # ID único para la API
  display_name = "Serverless API"         # Nombre descriptivo para la consola
}

# Configuración de la API, enlazando el archivo OpenAPI
resource "google_api_gateway_api_config" "api_config" {
  provider        = google-beta
  api             = google_api_gateway_api.api.id
  api_config_id   = "v1"                  # ID de la configuración
  openapi_documents {
    document {
      path     = "openapi.yaml"           # Ruta del archivo OpenAPI
      contents = filebase64("openapi.yaml")     # Contenido del archivo OpenAPI
    }
  }
}

# Crea el Gateway que expone la API configurada
resource "google_api_gateway_gateway" "gateway" {
  provider   = google-beta
  gateway_id = "serverless-gateway"                       # ID único del gateway
  api_config = google_api_gateway_api_config.api_config.id # Enlaza la configuración de la API
  region     = "us-central1"                              # Región donde se crea el gateway
}