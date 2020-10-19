variable "gcp_project_id" {
  description = "The ID of the Google Cloud project"
  default     = "sysadmin-work-test-292709"
}

variable "gcp_app_name" {
  description = "The name of the Google Cloud app"
  default     = "sysadmin-app"
}

variable "gcp_domain" {
  description = "The name of the Google Cloud domain"
  default     = "sysadmin-domain"
}

variable "gcp_environment" {
  description = "The environment of the Google Cloud"
  default     = "sysadmin-env"
}

variable "gcp_region" {
  description = "The region in which to deploy the Google Cloud project"
  default     = "us-east1"
}

variable "gcp_region_zone" {
  description = "The region zone in which to deploy the Google Cloud project"
  default     = "us-east1-b"
}

variable "gcp_machine_type" {
  description = "The type of virtual machine used to deploy Apache"
  default     = "n1-standard-1"
}

variable "gcp_credentials_file_path" {
  description = "Path to the JSON file used to describe your account credentials"
  default     = "./sysadmin-work-test-735e7df721f2.json"
}

variable "gcp_public_subnet_cidr_1" {
  description = "Public subnet CIDR 1"
  default = "10.10.1.0/24"
}

