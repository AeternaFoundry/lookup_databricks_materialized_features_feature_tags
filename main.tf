data "databricks_materialized_features_feature_tags" "materialized_features_feature_tags_lookup" {
  for_each = var.materialized_features_feature_tags_lookup

  feature_name    = each.value.feature_name
  table_name      = each.value.table_name
  page_size       = each.value.page_size
  provider_config = each.value.provider_config
}

