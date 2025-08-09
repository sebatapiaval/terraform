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
