resource "google_project_service" "api" {
  for_each = toset(local.apis)
  service  = each.key
  project = local.project_id

  disable_on_destroy = false
}