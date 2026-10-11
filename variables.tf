variable "apigee_security_actions" {
  description = <<EOT
Map of apigee_security_actions, attributes below
Required:
    - env_id
    - org_id
    - security_action_id
    - state
    - condition_config (block):
        - access_tokens (optional)
        - api_keys (optional)
        - api_products (optional)
        - asns (optional)
        - bot_reasons (optional)
        - developer_apps (optional)
        - developers (optional)
        - http_methods (optional)
        - ip_address_ranges (optional)
        - region_codes (optional)
        - user_agents (optional)
Optional:
    - api_proxies
    - deletion_policy
    - description
    - expire_time
    - ttl
    - allow (block):
    - deny (block):
        - response_code (optional)
    - flag (block):
        - headers (optional, block):
            - name (optional)
            - value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    env_id             = string
    org_id             = string
    security_action_id = string
    state              = string
    api_proxies        = optional(list(string))
    deletion_policy    = optional(string)
    description        = optional(string)
    expire_time        = optional(string)
    ttl                = optional(string)
    condition_config = object({
      access_tokens     = optional(list(string))
      api_keys          = optional(list(string))
      api_products      = optional(list(string))
      asns              = optional(list(string))
      bot_reasons       = optional(list(string))
      developer_apps    = optional(list(string))
      developers        = optional(list(string))
      http_methods      = optional(list(string))
      ip_address_ranges = optional(list(string))
      region_codes      = optional(list(string))
      user_agents       = optional(list(string))
    })
    allow = optional(object({
    }))
    deny = optional(object({
      response_code = optional(number)
    }))
    flag = optional(object({
      headers = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

