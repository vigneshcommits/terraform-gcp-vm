provider "google" {
    project = "calyptia-playground-371615"
    credentials = "${file("calyptia-playground-371615-31170bd97482.json")}"
    region = "us-east1"
    zone = "us-east1-b"
}

resource "google_compute_instance" "my_instance" {
  name = "terraform-instance"
  machine_type = "e2-medium"
  zone = "us-east1-b"
  boot_disk {
    initialize_params {
      image = "centos-7-v20200403"
    }
  }

  network_interface {
    network = "default"
    access_config {

    }
  }
}