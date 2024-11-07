
locals {
  # Decode the private key using a local variable
  decoded_private_key = base64decode(var.api_private_key)
}



provider "oci" {
  fingerprint      = var.api_fingerprint
  private_key      = local.decoded_private_key  ### < here
  region           = var.region
  tenancy_ocid     = var.tenancy_id
  user_ocid        = var.user_id
}

provider "oci" {
  fingerprint      = var.api_fingerprint
  private_key      = local.decoded_private_key  ### < here
  region           = var.home_region
  tenancy_ocid     = var.tenancy_id
  user_ocid        = var.user_id
  alias            = "home"
}