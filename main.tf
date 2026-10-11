resource "google_apigee_security_action" "apigee_security_actions" {
  for_each = var.apigee_security_actions

  env_id             = each.value.env_id
  org_id             = each.value.org_id
  security_action_id = each.value.security_action_id
  state              = each.value.state
  api_proxies        = each.value.api_proxies
  deletion_policy    = each.value.deletion_policy
  description        = each.value.description
  expire_time        = each.value.expire_time
  ttl                = each.value.ttl

  condition_config {
    access_tokens     = each.value.condition_config.access_tokens
    api_keys          = each.value.condition_config.api_keys
    api_products      = each.value.condition_config.api_products
    asns              = each.value.condition_config.asns
    bot_reasons       = each.value.condition_config.bot_reasons
    developer_apps    = each.value.condition_config.developer_apps
    developers        = each.value.condition_config.developers
    http_methods      = each.value.condition_config.http_methods
    ip_address_ranges = each.value.condition_config.ip_address_ranges
    region_codes      = each.value.condition_config.region_codes
    user_agents       = each.value.condition_config.user_agents
  }

  dynamic "allow" {
    for_each = each.value.allow != null ? [each.value.allow] : []
    content {
    }
  }

  dynamic "deny" {
    for_each = each.value.deny != null ? [each.value.deny] : []
    content {
      response_code = deny.value.response_code
    }
  }

  dynamic "flag" {
    for_each = each.value.flag != null ? [each.value.flag] : []
    content {
      dynamic "headers" {
        for_each = flag.value.headers != null ? flag.value.headers : []
        content {
          name  = headers.value.name
          value = headers.value.value
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

