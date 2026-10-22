resource "hcloud_server" "qw" {
  name        = "cx23-debian-qw"
  server_type = "cx23"
  image       = "debian-13"
  location    = "nbg1"
}
