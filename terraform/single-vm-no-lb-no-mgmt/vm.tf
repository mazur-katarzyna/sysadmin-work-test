# Terraform plugin for creating random ids
resource "random_id" "instance_id" {
  byte_length = 4
}

# Create VM #1
resource "google_compute_instance" "vm_instance_public" {
  name = "${var.gcp_app_name}-vm-${random_id.instance_id.hex}"
  machine_type = "n1-standard-1"
  zone = var.gcp_region_zone
  hostname = "${var.gcp_app_name}vm-${random_id.instance_id.hex}.${var.gcp_domain}"
  tags = ["ssh","http"]
  
  boot_disk {
    initialize_params {
      image = "global/images/packer-1603058506"
    }
  }  
  
  network_interface {
    network = google_compute_network.vpc.name
    subnetwork = google_compute_subnetwork.public_subnet_1.name
  
  access_config { }
  }
}
