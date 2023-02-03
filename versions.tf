terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.27.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }

  backend "gcs" {
    bucket = "cloud_hq_terraform_state"
    prefix = "terraform/state"
  }

  required_version = ">= 0.14"
}