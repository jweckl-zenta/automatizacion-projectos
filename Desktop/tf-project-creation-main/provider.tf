terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "4.66.0"
    }
  }
}

provider "google" {
    project = "test-tf-001"
    region = "us-central1"
}