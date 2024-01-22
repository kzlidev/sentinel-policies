module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "./common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "s3_enforce_encryption" {
  source            = "./rules/s3/s3-enforce-encryption.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "s3_mandatory_tags" {
  source            = "./rules/s3/s3-mandatory_tags.sentinel"
  enforcement_level = "soft-mandatory"
}