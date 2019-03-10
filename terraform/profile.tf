provider "google" {
  credentials = "${file("account.json")}"
  project     = "cu-demo"
  region      = "us-east1"
  zone        = "us-east1-b"
}
