provider "google" {
  credentials = "${file("key-file")}"
  project     = "cu-demo"
  region      = "us-east1"
  zone        = "us-east1-b"
}
