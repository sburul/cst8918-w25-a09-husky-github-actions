# Prefix for various resource names
variable "labelPrefix" {
  type        = string
  default = "buru0003"
  description = "This will form the beginning of various resource names."
}

# Resource group region
variable "region" {
  default = "canadacentral"
}

