variable "profile" {
  description = "AWS Profile used for this deployment"
}

# -----------------------------------------------------------------------------
# Variables: General
# -----------------------------------------------------------------------------

variable "namespace" {
  description = "AWS resource namespace/prefix"
}

variable "region" {
  description = "AWS region"
}

variable "resource_tag_name" {
  description = "Resource name for billing purposes"
}

variable "debug_sample_rate" {
  description = "Productive use, how many percentage of logs will be set to Debug"
  type        = number
}

# -----------------------------------------------------------------------------
# Variables: Cognito
# -----------------------------------------------------------------------------

variable "cognito_identity_pool_name" {
  description = "Name of the Cognito identity pool"
}

variable "cognito_identity_pool_provider" {
  description = "Name of the Cognito identity pool provider"
}

# -----------------------------------------------------------------------------
# Variables: Lambda Identity
# -----------------------------------------------------------------------------

variable "lambda_identity_memory_size" {
  description = "Lambda Memory (and CPU) size"
}

variable "lambda_identity_timeout" {
  description = "Lambda timeout"
}

variable "lambda_identity_api_timeout" {
  description = "API gateway timeout in ms, for Identity APIs"
}

# -----------------------------------------------------------------------------
# Variables: Lambda User
# -----------------------------------------------------------------------------
variable "lambda_user_memory_size" {
  description = "Lambda Memory (and CPU) size"
}

variable "lambda_user_timeout" {
  description = "Lambda timeout"
}

variable "lambda_user_api_timeout" {
  description = "API gateway timeout in ms, for Organization APIs"
}

# -----------------------------------------------------------------------------
# Variables: API Gateway
# -----------------------------------------------------------------------------

variable "api_throttling_rate_limit" {
  description = "API Gateway total requests across all API's within a REST endpoint"
}

variable "api_throttling_burst_limit" {
  description = "API Gateway total concurrent connections allowed for all API's within a REST endpoint"
}

variable "api_resources" {
  description = "API resources/paths we want monitored by CloudWatch"
  type        = map
}

variable "api_metrics_enabled" {
  description = "Enables detailed API Gateway metrics"
  type        = bool
  default     = false
}

variable "api_logging_level" {
  description = " (Optional) Specifies the logging level for this method, which effects the log entries pushed to Amazon CloudWatch Logs. The available levels are OFF, ERROR, and INFO."
  type        = string
  default     = "OFF"
}

variable "xray_tracing_enabled" {
  description = "Enables the XRay tracing and will create the necessary IAM permissions "
  type        = bool
  default     = false
}

# -----------------------------------------------------------------------------
# Variables: CodePipeline
# -----------------------------------------------------------------------------
variable "github_token" {
  type        = string
  description = "Github OAuth token"
}

variable "github_owner" {
  type        = string
  description = "Github username"
}

variable "github_repo" {
  type        = string
  description = "Github repository name"
}

variable "poll_source_changes" {
  type        = string
  default     = "false"
  description = "Periodically check the location of your source content and run the pipeline if changes are detected"
}