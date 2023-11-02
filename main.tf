resource "google_project" "creacion_proyecto" {
    name = var.project_id
    project_id = var.project_id
    org_id = var.organization_id
    billing_account = var.billing_account
    labels = {
      "cli"     = var.cli
      "env"     = var.env
      "ppto"    = var.budget_amount
    }
    # El siguiente parametro evitará la creación de la VPC default, la cual trae 4 subnets que no se consideran buenas prácticas y son alertas del Security Command Center.
    auto_create_network = "false"
}

#Editor a dueño del proyecto
resource "google_project_iam_binding" "project" {
  project = "${var.project_id}"
  role    = "roles/editor"
  members = [
    "user:${var.email_owner}"
    ]
}
