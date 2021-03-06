variable "additional_endpoint_arns" {
  description = "Any alert endpoints, such as autoscaling, or app scaling endpoint arns that will respond to an alert"
  default     = []
  type        = list(string)
}

variable "sns_topic_arn" {
  description = "An SNS topic ARN that has already been created. Its policy must already allow access from CloudWatch Alarms, or set `add_sns_policy` to `true`"
  default     = null
  type        = string
}

variable "add_sns_policy" {
  description = "Attach a policy that allows the notifications through to the SNS topic endpoint"
  default     = false
  type        = bool
}

variable "region" {
  description = "The region that should be monitored for unauthorised AWS API Access. Current region used if none provied."
  default     = null
  type        = string
}

variable "log_group_name" {
  description = "The cloudtrail cloudwatch log group name"
  type        = string
}

variable "metric_namespace" {
  description = "A namespace for grouping all of the metrics together"
  default     = "CISBenchmark"
  type        = string
}

variable "create_dashboard" {
  description = "When true a dashboard that displays the statistics as a line graph will be created in CloudWatch"
  default     = true
  type        = bool
}

variable "alarm_suffix" {
  default     = ""
  description = "Suffix to add to alarm name, used for separating different AWS account."
  type        = string
}

variable "alarm_evaluation_periods" {
  description = "Custom evaluation period for any given alarm, otherwise a default is used."
  default     = {}
  type        = map
}

variable "alarm_period" {
  description = "Custom period for any given alarm, otherwise a default is used."
  default     = {}
  type        = map
}

variable "alarm_threshold" {
  description = "Custom threshold for any given alarm, otherwise a default is used."
  default     = {}
  type        = map
}
