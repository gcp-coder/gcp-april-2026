# this is raw bucket - gs://prod-clt-prod-492715-tf-final/
resource "google_storage_bucket" "raw" {
  name          = "dev-${var.bucket_name}" # first bucket name is comming here 
  location      = var.location
  storage_class = var.storage_class
  force_destroy = true
  uniform_bucket_level_access = true
 
  labels = {
    env = var.env
  }
}

resource "google_storage_bucket" "processed" {
  name          = "dev-${var.bucket_name}-processed" # first bucket name is comming here 
  location      = var.location
  storage_class = var.storage_class
  force_destroy = true
  uniform_bucket_level_access = true
 
  labels = {
    env = var.env
  }
}

