module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "./common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "aws-functions" {
  source = "./aws-functions/aws-functions.sentinel"
}

policy "s3_mandatory_tags" {
  source            = "./rules/s3/s3-mandatory-tags.sentinel"
  enforcement_level = "soft-mandatory"
}

policy "common_cost_less_than_10" {
  source            = "./rules/common/cost-less-than-10.sentinel"
  enforcement_level = "soft-mandatory"
}
