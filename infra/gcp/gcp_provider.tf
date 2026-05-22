// providers.tf
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.0"
    }
  }
}

// gcp_provider.tf
provider "google" {
  project = "your-project-id"
  region  = "us-central1"
}

provider "google-beta" {
  project = "borrame-497116"
  region  = "us-central1"
}