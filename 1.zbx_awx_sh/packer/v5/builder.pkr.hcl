build {
  name    = "builder"
  sources = ["source.azure-arm.awx"]
  provisioner "ansible" {
    playbook_file = "../ansible/awx.yml"
    pause_before = "1m"
    pause_after  = "1m"
    timeout      = "2m"
  }
}