output "service_url" {
  description = "The URL of the Cloud Run Service."
  value       = google_cloud_run_service.default.status[0].url
}