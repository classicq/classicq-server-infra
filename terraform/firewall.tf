resource "hcloud_firewall" "qw" {
  name = "qw-firewall"

  apply_to {
    server = hcloud_server.qw.id
  }

  rule {
    direction  = "in"
    protocol   = "tcp"
    port       = "22"
    source_ips = ["0.0.0.0/0", "::/0"]
  }

  rule {
    description = "QuakeWorld servers"
    direction   = "in"
    protocol    = "udp"
    port        = "27500-27510"
    source_ips  = ["0.0.0.0/0", "::/0"]
  }

  rule {
    direction  = "in"
    protocol   = "icmp"
    source_ips = ["0.0.0.0/0", "::/0"]
  }
}
