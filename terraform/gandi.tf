

resource "gandi_livedns_record" "TXT1" {
    zone = var.gandi_domain
    name = "@"
    type = "TXT"
    ttl = 3600
    values = ["v=spf1 include:_spf.google.com ~all"]
}
