terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.67.0"
    }
    google-beta = {
      source = "hashicorp/google-beta"
        version     = "> 3.0.0"
    }
  }
  required_version = "~> 0.14"
}

provider "google" {
  credentials = var.auth_file
  project     = var.project_id
  region      = var.regions[0]
}

provider "google-beta" {
  credentials = var.auth_file
  project     = var.project_id
  region      = var.regions[0]
}

data "google_compute_zones" "available" {}