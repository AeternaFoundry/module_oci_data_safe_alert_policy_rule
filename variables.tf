variable "data_safe_alert_policy_rules" {
  description = <<EOT
Map of data_safe_alert_policy_rules, attributes below
Required:
    - alert_policy_id
    - expression
Optional:
    - description
    - display_name
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    alert_policy_id = string
    expression      = string
    description     = optional(string)
    display_name    = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

