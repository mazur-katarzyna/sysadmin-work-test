# setup the GCP provider 
terraform {
  required_version = ">= 0.12"
}

provider "google" {
  project     = var.gcp_project_id
  credentials = file(var.gcp_credentials_file_path)
  region      = var.gcp_region
  zone        = var.gcp_region_zone
}

provider "google-beta" {
  project     = var.gcp_project_id
  credentials = file(var.gcp_credentials_file_path)
  region      = var.gcp_region
  zone        = var.gcp_region_zone
}
