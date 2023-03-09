provider "google" {
    project = "calyptia-playground-371615"
    credentials = var.gcp_credentials
    region = "us-east1"
    zone = "us-east1-b"
}

resource "google_compute_instance" "my_instance" {
  name = "terraform-instance"
  machine_type = "e2-medium"
  zone = var.zone
  boot_disk {
    initialize_params {
      image = var.image_name
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }
}
