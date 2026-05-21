resource "google_compute_security_policy" "waf" {
  name = "cloud-armor-policy"
  description = "Basic Cloud Armor WAF policy"
  rule {
    action   = "allow"
    priority = 1000
    match {
      versioned_expr = "SRC_IPS_V1"
      config {
        src_ip_ranges = ["*"]
      }
    }
    description = "Allow all"
  }
}