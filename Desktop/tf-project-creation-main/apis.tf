# En el presente .tf, se configuran todas las APIs que se activarán junto con la creación del proyecto.

resource "google_project_service" "billing" {
  depends_on = [ google_project.creacion_proyecto ]
  project = var.project_id
  service = "cloudbilling.googleapis.com"
}

resource "google_project_service" "billing_budget" {
  depends_on = [ google_project.creacion_proyecto ]
  project = var.project_id
  service = "billingbudgets.googleapis.com"
}

resource "google_project_service" "service_usage" {
  depends_on = [ google_project.creacion_proyecto ]
  project = var.project_id
  service = "serviceusage.googleapis.com"
}

resource "google_project_service" "resource_manager" {
  depends_on = [ google_project.creacion_proyecto ]
  project = var.project_id
  service = "cloudresourcemanager.googleapis.com"
}

resource "google_project_service" "logging" {
  depends_on = [ google_project.creacion_proyecto ]
  project = var.project_id
  service = "logging.googleapis.com"
}

resource "google_project_service" "monitoring" {
  depends_on = [ google_project.creacion_proyecto ]
  project = var.project_id
  service = "monitoring.googleapis.com"
}

resource "google_project_service" "compute" {
  depends_on = [ google_project.creacion_proyecto ]
  project = var.project_id
  service = "compute.googleapis.com"
}

resource "google_project_service" "dns" {
  depends_on = [ google_project.creacion_proyecto ]
  project = var.project_id
  service = "dns.googleapis.com"
}