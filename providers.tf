# Google Cloud Platform Provider
# https://registry.terraform.io/providers/hashicorp/google/latest/docs
provider "google" {
  project = local.project_id
  region  = local.region
}

terraform {
  required_version = ">= 1.0"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}