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
