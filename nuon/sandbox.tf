resource "nuon_app_sandbox" "main" {
  app_id            = nuon_app.example.id
  terraform_version = "v1.6.3"

  public_repo = {
    repo      = "nuonco/sandboxes"
    branch    = "ja/3144-byovpc"
    directory = "aws-eks-byovpc"
  }

  var {
    name  = "eks_version"
    value = "v1.27.8"
  }
}
