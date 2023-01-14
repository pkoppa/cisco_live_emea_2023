module "org_details" {
  source            = "./modules/org_details"
  organization_name = var.organization_name
}

resource "intersight_ntp_policy" "ntp1" {
  name        = "${var.prefix_for_policies}-ntp-policy"
  description = "NTP Policy for UCS Domain"
  enabled     = true
  ntp_servers = var.list_of_ntp_servers
  timezone    = var.timezone

  organization {
    object_type = "organization.Organization"
    moid        = module.org_details.org_moid
  }
}

