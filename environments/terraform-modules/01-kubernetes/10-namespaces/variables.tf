variable "namespace_name" {
  description = "The name of the namespace"
  type        = string
}

variable "namespace_labels" {
  description = "A map of labels to add to the namespace"
  type        = map(string)
  default     = {}
}
