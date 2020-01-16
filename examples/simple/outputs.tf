output "sns_topic_arn" {
  value = module.cloudtrail_api_alarms.sns_topic_arn
}

output "dashboard_individual" {
  value = module.cloudtrail_api_alarms.dashboard_individual
}

output "dashboard_combined" {
  value = module.cloudtrail_api_alarms.dashboard_combined
}