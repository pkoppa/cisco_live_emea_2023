output "org_moid" {
  value = data.intersight_organization_organization.org_details.results[0].moid
}