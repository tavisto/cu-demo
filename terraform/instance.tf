resource "google_compute_instance" "default" {
  name         = "terraform-node2"
  machine_type = "e2-small"
  zone         = "us-east1-b"

  tags = ["terraform"]

  boot_disk {
    initialize_params {
      image = "debian-12-bookworm-v20250113"
    }
  }

  network_interface {
    network = "default"

    access_config {}
  }

  metadata = {
    created_by = "terraform"
  }

  metadata_startup_script = "echo -n Hello from Terraform\n > /hello.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}

output "instance_name" {
  value = google_compute_instance.default.name
}

output "instance_info" {
  value     = google_compute_instance.default
  sensitive = true
}
