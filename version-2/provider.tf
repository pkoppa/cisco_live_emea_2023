terraform {
  required_providers {
    intersight = {
      source  = "CiscoDevNet/intersight"
      version = "1.0.28"
    }
  }
}

provider "intersight" {
  # Configuration options
  apikey    = "596cc79e5d91b400010d15ad/5fc8373e7564612d33d09a68/62a6937c7564612d338561c0"
  secretkey = "SecretKey.txt"
  endpoint  = "https://intersight.com"
}