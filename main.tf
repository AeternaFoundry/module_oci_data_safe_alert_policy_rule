resource "oci_data_safe_alert_policy_rule" "data_safe_alert_policy_rules" {
  for_each = var.data_safe_alert_policy_rules

  alert_policy_id = each.value.alert_policy_id
  expression      = each.value.expression
  description     = each.value.description
  display_name    = each.value.display_name

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

