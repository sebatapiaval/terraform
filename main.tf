terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  credentials = file(var.google_credentials)
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "default" {
  for_each     = toset(var.vm_names)
  name         = each.value
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
