terraform {
  backend "gcs" {
    bucket = ""
    prefix = "dataproc_standalone"
  }
}
