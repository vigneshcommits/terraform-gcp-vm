variable "gcp_credentials" {
  type = string
  sensitive = true
  description = "Google Cloud service account credentials"
}

variable "image_name" {
    default = "centos-7-v20200403"
    type = string
}

variable "machine_type" {
    default = "e2-medium"
    type = string
}

variable "zone" {
    default = "us-east1-b"
    type = string
}
