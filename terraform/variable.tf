locals {
  data_lake_bucket = "shoprite_datalake"
}

variable "project" {
  description = "project name"
  default = "dataengineering-bizzy"
}

variable "region" {
  description = "Region for GCP resources. Choose as per your location: https://cloud.google.com/about/locations"
  default = "northamerica-northeast1"
  type = string
}

variable "storage_class" {
  description = "Storage class type for your bucket. Check official docs for more info."
  default = "STANDARD"
}

variable "BQ_DATASET" {
  description = "BigQuery Dataset that raw data (from GCS) will be written to"
  type = string
  default = "trips_data_all"
}

variable "credentials" {
  description = "credentials for authentication to gcp"
  default = "/Users/gabidoye/Downloads/dataengineering-bizzy-770f13466383.json"
}


