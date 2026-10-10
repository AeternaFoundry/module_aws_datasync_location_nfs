resource "aws_datasync_location_nfs" "datasync_location_nfs" {
  for_each = var.datasync_location_nfs

  server_hostname = each.value.server_hostname
  subdirectory    = each.value.subdirectory
  region          = each.value.region
  tags            = each.value.tags
  tags_all        = each.value.tags_all

  on_prem_config {
    agent_arns = each.value.on_prem_config.agent_arns
  }

  dynamic "mount_options" {
    for_each = each.value.mount_options != null ? [each.value.mount_options] : []
    content {
      version = mount_options.value.version
    }
  }
}

