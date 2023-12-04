resource "nuon_app_input" "example" {
  app_id = nuon_app.example.id

  input {
    name        = "vpc_id"
    description = "The VPC to deploy the app to."
    default     = ""
    required    = true
  }
}
