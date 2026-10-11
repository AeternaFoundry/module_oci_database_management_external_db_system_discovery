resource "oci_database_management_external_db_system_discovery" "database_management_external_db_system_discoveries" {
  for_each = var.database_management_external_db_system_discoveries

  agent_id       = each.value.agent_id
  compartment_id = each.value.compartment_id
  defined_tags   = each.value.defined_tags
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags

  dynamic "patch_operations" {
    for_each = each.value.patch_operations != null ? each.value.patch_operations : []
    content {
      operation = patch_operations.value.operation
      selection = patch_operations.value.selection
      dynamic "value" {
        for_each = patch_operations.value.value != null ? [patch_operations.value.value] : []
        content {
          compartment_id = value.value.compartment_id
          dynamic "connector" {
            for_each = value.value.connector != null ? [value.value.connector] : []
            content {
              agent_id = connector.value.agent_id
              dynamic "connection_info" {
                for_each = connector.value.connection_info != null ? [connector.value.connection_info] : []
                content {
                  component_type = connection_info.value.component_type
                  dynamic "connection_credentials" {
                    for_each = connection_info.value.connection_credentials != null ? [connection_info.value.connection_credentials] : []
                    content {
                      credential_name    = connection_credentials.value.credential_name
                      credential_type    = connection_credentials.value.credential_type
                      password_secret_id = connection_credentials.value.password_secret_id
                      role               = connection_credentials.value.role
                      ssl_secret_id      = connection_credentials.value.ssl_secret_id
                      user_name          = connection_credentials.value.user_name
                    }
                  }
                  dynamic "connection_string" {
                    for_each = connection_info.value.connection_string != null ? [connection_info.value.connection_string] : []
                    content {
                      host_name = connection_string.value.host_name
                      hosts     = connection_string.value.hosts
                      port      = connection_string.value.port
                      protocol  = connection_string.value.protocol
                      service   = connection_string.value.service
                    }
                  }
                }
              }
              connector_type = connector.value.connector_type
              display_name   = connector.value.display_name
            }
          }
          display_name               = value.value.display_name
          is_selected_for_monitoring = value.value.is_selected_for_monitoring
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

