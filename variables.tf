variable "name" {
  type = string
}

variable "ad_group_members" {
  type = set(string)
}

variable "ad_group_owners" {
  type = set(string)
}
