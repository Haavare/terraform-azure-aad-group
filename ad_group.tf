resource "azuread_group" "ad_group" {
  display_name     = var.name
  owners           = var.ad_group_owners
  security_enabled = true
}

resource "azuread_group_member" "ad_group_member" {
  for_each = var.ad_group_members
  group_object_id = azuread_group.ad_group.object_id
  member_object_id = each.value
}
