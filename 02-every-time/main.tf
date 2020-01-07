terraform {
  required_version = ">= 0.12"
}

resource "null_resource" "PowerShellRunEveryTime" {
  triggers = {
    trigger = "${uuid()}"
  }
  provisioner "local-exec" {
    command     = "../helpers/Get-Processes.ps1 -First 10"
    interpreter = ["pwsh", "-Command"]
  }
}

