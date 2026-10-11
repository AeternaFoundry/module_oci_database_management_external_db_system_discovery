variable "database_management_external_db_system_discoveries" {
  description = <<EOT
Map of database_management_external_db_system_discoveries, attributes below
Required:
    - agent_id
    - compartment_id
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - patch_operations (block):
        - operation (required)
        - selection (required)
        - value (optional, block):
            - compartment_id (optional)
            - connector (optional, block):
                - agent_id (optional)
                - connection_info (optional, block):
                    - component_type (required)
                    - connection_credentials (optional, block):
                        - credential_name (optional)
                        - credential_type (required)
                        - password_secret_id (optional)
                        - role (optional)
                        - ssl_secret_id (optional)
                        - user_name (optional)
                    - connection_string (optional, block):
                        - host_name (optional)
                        - hosts (optional)
                        - port (optional)
                        - protocol (optional)
                        - service (optional)
                - connector_type (required)
                - display_name (required)
            - display_name (optional)
            - is_selected_for_monitoring (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    agent_id       = string
    compartment_id = string
    defined_tags   = optional(map(string))
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    patch_operations = optional(list(object({
      operation = string
      selection = string
      value = optional(object({
        compartment_id = optional(string)
        connector = optional(object({
          agent_id = optional(string)
          connection_info = optional(object({
            component_type = string
            connection_credentials = optional(object({
              credential_name    = optional(string)
              credential_type    = string
              password_secret_id = optional(string)
              role               = optional(string)
              ssl_secret_id      = optional(string)
              user_name          = optional(string)
            }))
            connection_string = optional(object({
              host_name = optional(string)
              hosts     = optional(list(string))
              port      = optional(number)
              protocol  = optional(string)
              service   = optional(string)
            }))
          }))
          connector_type = string
          display_name   = string
        }))
        display_name               = optional(string)
        is_selected_for_monitoring = optional(bool)
      }))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.database_management_external_db_system_discoveries : (
        v.patch_operations == null || alltrue([for item in v.patch_operations : (contains([for v in ["MERGE"] : lower(v)], lower(item.operation)))])
      )
    ])
    error_message = "must be one of: \"MERGE\""
  }
}

