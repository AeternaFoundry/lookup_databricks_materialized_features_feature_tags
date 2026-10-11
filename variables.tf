variable "materialized_features_feature_tags_lookup" {
  description = <<EOT
Map of materialized_features_feature_tags_lookup, attributes below
Required:
    - feature_name
    - table_name
Optional:
    - page_size
    - provider_config
EOT

  type = map(object({
    feature_name = string
    table_name   = string
    page_size    = optional(number)
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

