variable "emr_instance_groups" {
  description = <<EOT
Map of emr_instance_groups, attributes below
Required:
    - cluster_id
    - instance_type
Optional:
    - autoscaling_policy
    - bid_price
    - configurations_json
    - ebs_optimized
    - instance_count
    - name
    - region
    - ebs_config (block):
        - iops (optional)
        - size (required)
        - type (required)
        - volumes_per_instance (optional)
EOT

  type = map(object({
    cluster_id          = string
    instance_type       = string
    autoscaling_policy  = optional(string)
    bid_price           = optional(string)
    configurations_json = optional(string)
    ebs_optimized       = optional(bool)
    instance_count      = optional(number)
    name                = optional(string)
    region              = optional(string)
    ebs_config = optional(list(object({
      iops                 = optional(number)
      size                 = number
      type                 = string
      volumes_per_instance = optional(number)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.emr_instance_groups : (
        v.autoscaling_policy == null || (can(jsondecode(v.autoscaling_policy)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.emr_instance_groups : (
        v.configurations_json == null || (can(jsondecode(v.configurations_json)))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

