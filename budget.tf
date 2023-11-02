# En el presente .tf, se declara la creación de una alerta de Billing, en la cual se alerta al 10%, 50%, 75% y 100%. Agregar más threshold rules de ser necesario.

resource "google_billing_budget" "alerta" {
  depends_on = [ google_project_service.billing_budget ]
  billing_account = var.billing_account
  display_name = var.project_id
  
  budget_filter {
    projects               = ["projects/${var.project_id}"]
  }

  amount {
    specified_amount {
      currency_code = "USD"
      units = var.budget_amount
    }
  }
  threshold_rules {
      threshold_percent =  0.1
  }
  threshold_rules {
      threshold_percent =  0.5
  }
  threshold_rules {
      threshold_percent =  0.75
  }
  threshold_rules {
      threshold_percent =  1
  }     
}