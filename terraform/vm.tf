# Create web server template
resource "google_compute_instance_template" "web_server" {
  name = "${var.gcp_app_name}-web-server-template"
  description = "This template is used to create Apache web server"
  instance_description = "Web Server running Apache"
  can_ip_forward = false
  machine_type = "n1-standard-1"
  tags = ["ssh","http"]  
  
  scheduling {
    automatic_restart = true
    on_host_maintenance = "MIGRATE"
  }  
  
  disk {
    source_image = "global/images/packer-1603058506"
    auto_delete = true
    boot = true
  }
  
  network_interface {
    network = google_compute_network.vpc.name
    subnetwork = google_compute_subnetwork.private_subnet_1.name
  }
  
  lifecycle {
    create_before_destroy = true
  }  
}
