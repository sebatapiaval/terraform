terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentials_file)
  project     = var.project_id
  region      = "us-central1"
  zone        = "us-central1-a"
}

resource "google_compute_instance" "default" {
  for_each     = toset(var.vm_names)
  name         = each.value
  machine_type = "e2-micro"

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

output "vm_names" {
  description = "Lista de VMs creadas"
  value       = [for vm in google_compute_instance.default : vm.name]
}
