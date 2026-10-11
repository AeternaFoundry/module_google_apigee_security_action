output "apigee_security_actions_id" {
  description = "Map of id values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no id are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_security_actions_allow" {
  description = "Map of allow values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no allow are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => one(v.allow) if v.allow != null && length(v.allow) > 0 }
}
output "apigee_security_actions_api_proxies" {
  description = "Map of api_proxies values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no api_proxies are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => v.api_proxies if v.api_proxies != null && length(v.api_proxies) > 0 }
}
output "apigee_security_actions_condition_config" {
  description = "Map of condition_config values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no condition_config are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => one(v.condition_config) if v.condition_config != null && length(v.condition_config) > 0 }
}
output "apigee_security_actions_create_time" {
  description = "Map of create_time values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no create_time are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => v.create_time if v.create_time != null && length(v.create_time) > 0 }
}
output "apigee_security_actions_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_security_actions_deny" {
  description = "Map of deny values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no deny are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => one(v.deny) if v.deny != null && length(v.deny) > 0 }
}
output "apigee_security_actions_description" {
  description = "Map of description values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no description are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => v.description if v.description != null && length(v.description) > 0 }
}
output "apigee_security_actions_env_id" {
  description = "Map of env_id values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no env_id are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => v.env_id if v.env_id != null && length(v.env_id) > 0 }
}
output "apigee_security_actions_expire_time" {
  description = "Map of expire_time values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no expire_time are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => v.expire_time if v.expire_time != null && length(v.expire_time) > 0 }
}
output "apigee_security_actions_flag" {
  description = "Map of flag values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no flag are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => one(v.flag) if v.flag != null && length(v.flag) > 0 }
}
output "apigee_security_actions_org_id" {
  description = "Map of org_id values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no org_id are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => v.org_id if v.org_id != null && length(v.org_id) > 0 }
}
output "apigee_security_actions_security_action_id" {
  description = "Map of security_action_id values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no security_action_id are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => v.security_action_id if v.security_action_id != null && length(v.security_action_id) > 0 }
}
output "apigee_security_actions_state" {
  description = "Map of state values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no state are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => v.state if v.state != null && length(v.state) > 0 }
}
output "apigee_security_actions_ttl" {
  description = "Map of ttl values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no ttl are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => v.ttl if v.ttl != null && length(v.ttl) > 0 }
}
output "apigee_security_actions_update_time" {
  description = "Map of update_time values across all apigee_security_actions, keyed the same as var.apigee_security_actions except keys with no update_time are omitted"
  value       = { for k, v in google_apigee_security_action.apigee_security_actions : k => v.update_time if v.update_time != null && length(v.update_time) > 0 }
}

