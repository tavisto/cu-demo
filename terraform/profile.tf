provider "google" {
  version     = "~> 4.0"
  credentials = "${file("key-file")}"
  project     = "cu-demo"
  region      = "us-east1"
  zone        = "us-east1-b"
}
