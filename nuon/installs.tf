resource "nuon_install" "quickstart_job_test" {
  name         = "quickstart_job_test"
  app_id       = nuon_app.example.id
  region       = "us-west-2"
  iam_role_arn = "arn:aws:iam::949309607565:role/nuon-demo-install-access"
  depends_on = [
    nuon_app_sandbox.main,
  ]
}
