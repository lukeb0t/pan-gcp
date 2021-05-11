
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