# create VPC
resource "google_compute_network" "vpc" {
  name = "${var.gcp_app_name}-vpc"
  auto_create_subnetworks = "false" 
  routing_mode = "GLOBAL"
}

# create public subnet
resource "google_compute_subnetwork" "public_subnet_1" {
  name = "${var.gcp_app_name}-public-subnet-1"
  ip_cidr_range = var.gcp_public_subnet_cidr_1
  network = google_compute_network.vpc.name
  region = var.gcp_region
}
