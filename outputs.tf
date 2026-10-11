output "database_management_external_db_system_discoveries_id" {
  description = "Map of id values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no id are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.id if v.id != null && length(v.id) > 0 }
}
output "database_management_external_db_system_discoveries_agent_id" {
  description = "Map of agent_id values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no agent_id are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.agent_id if v.agent_id != null && length(v.agent_id) > 0 }
}
output "database_management_external_db_system_discoveries_compartment_id" {
  description = "Map of compartment_id values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no compartment_id are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "database_management_external_db_system_discoveries_defined_tags" {
  description = "Map of defined_tags values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no defined_tags are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "database_management_external_db_system_discoveries_discovered_components" {
  description = "Map of discovered_components values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no discovered_components are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.discovered_components if v.discovered_components != null && length(v.discovered_components) > 0 }
}
output "database_management_external_db_system_discoveries_display_name" {
  description = "Map of display_name values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no display_name are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "database_management_external_db_system_discoveries_external_db_system_discovery_id" {
  description = "Map of external_db_system_discovery_id values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no external_db_system_discovery_id are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.external_db_system_discovery_id if v.external_db_system_discovery_id != null && length(v.external_db_system_discovery_id) > 0 }
}
output "database_management_external_db_system_discoveries_freeform_tags" {
  description = "Map of freeform_tags values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "database_management_external_db_system_discoveries_grid_home" {
  description = "Map of grid_home values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no grid_home are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.grid_home if v.grid_home != null && length(v.grid_home) > 0 }
}
output "database_management_external_db_system_discoveries_lifecycle_details" {
  description = "Map of lifecycle_details values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "database_management_external_db_system_discoveries_patch_operations" {
  description = "Map of patch_operations values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no patch_operations are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.patch_operations if v.patch_operations != null && length(v.patch_operations) > 0 }
}
output "database_management_external_db_system_discoveries_resource_id" {
  description = "Map of resource_id values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no resource_id are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.resource_id if v.resource_id != null && length(v.resource_id) > 0 }
}
output "database_management_external_db_system_discoveries_state" {
  description = "Map of state values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no state are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.state if v.state != null && length(v.state) > 0 }
}
output "database_management_external_db_system_discoveries_system_tags" {
  description = "Map of system_tags values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no system_tags are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "database_management_external_db_system_discoveries_time_created" {
  description = "Map of time_created values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no time_created are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "database_management_external_db_system_discoveries_time_updated" {
  description = "Map of time_updated values across all database_management_external_db_system_discoveries, keyed the same as var.database_management_external_db_system_discoveries except keys with no time_updated are omitted"
  value       = { for k, v in oci_database_management_external_db_system_discovery.database_management_external_db_system_discoveries : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}

