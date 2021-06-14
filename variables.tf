variable "deployment" {
  type    = number
  default = 1
  validation {
    condition     = var.deployment == "1" || var.deployment == "2"
    error_message = "Please use `1` or `2` for the `deployment`."
  }
}
