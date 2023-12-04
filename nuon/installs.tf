resource "nuon_install" "customer_one" {
  count = var.install_count

  name         = "quickstart-${count.index}"
  app_id       = nuon_app.example.id
  region       = var.install_region
  iam_role_arn = var.install_iam_role_arn

  input {
    name  = "vpc_id"
    value = "vpc-018481e7c6547a41f"
  }

  depends_on = [
    nuon_app_sandbox.main,
  ]
}
