output "datasync_location_nfs_id" {
  description = "Map of id values across all datasync_location_nfs, keyed the same as var.datasync_location_nfs"
  value       = { for k, v in aws_datasync_location_nfs.datasync_location_nfs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "datasync_location_nfs_arn" {
  description = "Map of arn values across all datasync_location_nfs, keyed the same as var.datasync_location_nfs"
  value       = { for k, v in aws_datasync_location_nfs.datasync_location_nfs : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "datasync_location_nfs_mount_options" {
  description = "Map of mount_options values across all datasync_location_nfs, keyed the same as var.datasync_location_nfs"
  value       = { for k, v in aws_datasync_location_nfs.datasync_location_nfs : k => one(v.mount_options) if v.mount_options != null && length(v.mount_options) > 0 }
}
output "datasync_location_nfs_on_prem_config" {
  description = "Map of on_prem_config values across all datasync_location_nfs, keyed the same as var.datasync_location_nfs"
  value       = { for k, v in aws_datasync_location_nfs.datasync_location_nfs : k => one(v.on_prem_config) if v.on_prem_config != null && length(v.on_prem_config) > 0 }
}
output "datasync_location_nfs_region" {
  description = "Map of region values across all datasync_location_nfs, keyed the same as var.datasync_location_nfs"
  value       = { for k, v in aws_datasync_location_nfs.datasync_location_nfs : k => v.region if v.region != null && length(v.region) > 0 }
}
output "datasync_location_nfs_server_hostname" {
  description = "Map of server_hostname values across all datasync_location_nfs, keyed the same as var.datasync_location_nfs"
  value       = { for k, v in aws_datasync_location_nfs.datasync_location_nfs : k => v.server_hostname if v.server_hostname != null && length(v.server_hostname) > 0 }
}
output "datasync_location_nfs_subdirectory" {
  description = "Map of subdirectory values across all datasync_location_nfs, keyed the same as var.datasync_location_nfs"
  value       = { for k, v in aws_datasync_location_nfs.datasync_location_nfs : k => v.subdirectory if v.subdirectory != null && length(v.subdirectory) > 0 }
}
output "datasync_location_nfs_tags" {
  description = "Map of tags values across all datasync_location_nfs, keyed the same as var.datasync_location_nfs"
  value       = { for k, v in aws_datasync_location_nfs.datasync_location_nfs : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "datasync_location_nfs_tags_all" {
  description = "Map of tags_all values across all datasync_location_nfs, keyed the same as var.datasync_location_nfs"
  value       = { for k, v in aws_datasync_location_nfs.datasync_location_nfs : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "datasync_location_nfs_uri" {
  description = "Map of uri values across all datasync_location_nfs, keyed the same as var.datasync_location_nfs"
  value       = { for k, v in aws_datasync_location_nfs.datasync_location_nfs : k => v.uri if v.uri != null && length(v.uri) > 0 }
}

