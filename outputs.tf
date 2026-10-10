output "emr_instance_groups_id" {
  description = "Map of id values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "emr_instance_groups_autoscaling_policy" {
  description = "Map of autoscaling_policy values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.autoscaling_policy if v.autoscaling_policy != null && length(v.autoscaling_policy) > 0 }
}
output "emr_instance_groups_bid_price" {
  description = "Map of bid_price values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.bid_price if v.bid_price != null && length(v.bid_price) > 0 }
}
output "emr_instance_groups_cluster_id" {
  description = "Map of cluster_id values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.cluster_id if v.cluster_id != null && length(v.cluster_id) > 0 }
}
output "emr_instance_groups_configurations_json" {
  description = "Map of configurations_json values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.configurations_json if v.configurations_json != null && length(v.configurations_json) > 0 }
}
output "emr_instance_groups_ebs_config" {
  description = "Map of ebs_config values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.ebs_config if v.ebs_config != null && length(v.ebs_config) > 0 }
}
output "emr_instance_groups_ebs_optimized" {
  description = "Map of ebs_optimized values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.ebs_optimized if v.ebs_optimized != null }
}
output "emr_instance_groups_instance_count" {
  description = "Map of instance_count values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.instance_count if v.instance_count != null }
}
output "emr_instance_groups_instance_type" {
  description = "Map of instance_type values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.instance_type if v.instance_type != null && length(v.instance_type) > 0 }
}
output "emr_instance_groups_name" {
  description = "Map of name values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "emr_instance_groups_region" {
  description = "Map of region values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.region if v.region != null && length(v.region) > 0 }
}
output "emr_instance_groups_running_instance_count" {
  description = "Map of running_instance_count values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.running_instance_count if v.running_instance_count != null }
}
output "emr_instance_groups_status" {
  description = "Map of status values across all emr_instance_groups, keyed the same as var.emr_instance_groups"
  value       = { for k, v in aws_emr_instance_group.emr_instance_groups : k => v.status if v.status != null && length(v.status) > 0 }
}

