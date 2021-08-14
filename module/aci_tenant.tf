
# Define an ACI Tenant Resource.
resource "aci_tenant" "test_tenant" {
       name          = "test-tenant"
       description = "This tenant is created by terraform"
}

resource "aci_app_profile" "test-app" {
  tenant_dn   = "${aci_tenant.test-tenant.id}"
  name        = "test-app"
  description = "This app profile is created by terraform"
}
