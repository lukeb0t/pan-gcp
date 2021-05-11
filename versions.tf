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
