variable "datasync_location_nfs" {
  description = <<EOT
Map of datasync_location_nfs, attributes below
Required:
    - server_hostname
    - subdirectory
    - on_prem_config (block):
        - agent_arns (required)
Optional:
    - region
    - tags
    - tags_all
    - mount_options (block):
        - version (optional)
EOT

  type = map(object({
    server_hostname = string
    subdirectory    = string
    region          = optional(string)
    tags            = optional(map(string))
    tags_all        = optional(map(string))
    on_prem_config = object({
      agent_arns = set(string)
    })
    mount_options = optional(object({
      version = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_nfs : (
        length(v.server_hostname) >= 1 && length(v.server_hostname) <= 255
      )
    ])
    error_message = "must be between 1 and 255 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.datasync_location_nfs : (
        length(v.subdirectory) >= 1 && length(v.subdirectory) <= 4096
      )
    ])
    error_message = "must be between 1 and 4096 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

