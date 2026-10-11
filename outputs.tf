output "materialized_features_feature_tags_lookup_feature_name" {
  description = "Map of feature_name values across all materialized_features_feature_tags_lookup, keyed the same as var.materialized_features_feature_tags_lookup except keys with no feature_name are omitted"
  value       = { for k, v in data.databricks_materialized_features_feature_tags.materialized_features_feature_tags_lookup : k => v.feature_name if v.feature_name != null && length(v.feature_name) > 0 }
}
output "materialized_features_feature_tags_lookup_feature_tags" {
  description = "Map of feature_tags values across all materialized_features_feature_tags_lookup, keyed the same as var.materialized_features_feature_tags_lookup except keys with no feature_tags are omitted"
  value       = { for k, v in data.databricks_materialized_features_feature_tags.materialized_features_feature_tags_lookup : k => v.feature_tags if v.feature_tags != null && length(v.feature_tags) > 0 }
}
output "materialized_features_feature_tags_lookup_page_size" {
  description = "Map of page_size values across all materialized_features_feature_tags_lookup, keyed the same as var.materialized_features_feature_tags_lookup except keys with no page_size are omitted"
  value       = { for k, v in data.databricks_materialized_features_feature_tags.materialized_features_feature_tags_lookup : k => v.page_size if v.page_size != null }
}
output "materialized_features_feature_tags_lookup_provider_config" {
  description = "Map of provider_config values across all materialized_features_feature_tags_lookup, keyed the same as var.materialized_features_feature_tags_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_materialized_features_feature_tags.materialized_features_feature_tags_lookup : k => v.provider_config if v.provider_config != null && length(v.provider_config) > 0 }
}
output "materialized_features_feature_tags_lookup_table_name" {
  description = "Map of table_name values across all materialized_features_feature_tags_lookup, keyed the same as var.materialized_features_feature_tags_lookup except keys with no table_name are omitted"
  value       = { for k, v in data.databricks_materialized_features_feature_tags.materialized_features_feature_tags_lookup : k => v.table_name if v.table_name != null && length(v.table_name) > 0 }
}

