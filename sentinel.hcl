policy "s3_enforce_encryption" {
  source            = "./s3-enforce-encryption.sentinel"
  enforcement_level = "soft-mandatory"
}