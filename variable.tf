#--------------------------------------------*--------------------------------------------
#  Module: Azure Resource Group - Variable
#--------------------------------------------*--------------------------------------------

variable "stack" {
  description = "Stack name"
  type = string
}

variable "location" {
  description = "Azure location"
  type = string
}

variable "tags" {
  description = "Tags to apply to all resources"
  type = map(string)
}

variable "prefixes" {
  description = "List of prefixes to append in front of the resource name."
  type        = list(string)
  default     = []
}

variable "suffixes" {
  description = "List of suffixes to append at the end of the resource name."
  type        = list(string)
  default     = []
}

variable "passthrough" {
  description = "Use the input name as-is, no modifiers."
  type        = bool
  default     = false
}

variable "use_slug" {
  description = "Set to true to use a slug format on the name"
  type        = bool
  default     = true
}

variable "separator" {
  description = "Separator string use to delimit resource name segments."
  type        = string
  default     = "-"
}

variable "clean_input" {
  description = "Set to true to remove all non-alphanumeric characters from the name."
  type        = bool
  default     = true
}

# end
#--------------------------------------------*--------------------------------------------