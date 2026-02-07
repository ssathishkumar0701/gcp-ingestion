provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_storage_bucket" "templates" {
  name          = "${var.project_id}-df-templates"
  location      = var.region
  force_destroy = true
}

resource "google_storage_bucket" "temp" {
  name          = "${var.project_id}-df-temp"
  location      = var.region
  force_destroy = true
}

resource "google_artifact_registry_repository" "repo" {
  location      = var.region
  repository_id = "dataflow-repo"
  format        = "DOCKER"
}
