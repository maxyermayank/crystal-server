provider "aws" {
  version = "~> 2.24"
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

locals {
  name = "crystal-server"
  global_tags = merge(
    {
      "Name"        = local.name
      "Product"     = var.product
      "Project"     = var.project
      "Environment" = var.environment
      "Description" = var.description
      "ManagedBy"   = var.managedBy
    },
    var.tags,
  )
}

data "template_file" "init" {
  /*template = "${file("user_data")}"*/
  template = <<EOF
<script>
  winrm quickconfig -q & winrm set winrm/config/winrs @{MaxMemoryPerShellMB="300"} & winrm set winrm/config @{MaxTimeoutms="1800000"} & winrm set winrm/config/service @{AllowUnencrypted="true"} & winrm set winrm/config/service/auth @{Basic="true"}
</script>
<powershell>
  netsh advfirewall firewall add rule name="WinRM in" protocol=TCP dir=in profile=any localport=5985 remoteip=any localip=any action=allow
  $admin = [ADSI]("WinNT://./administrator, user")
  $admin.SetPassword("${var.admin_password}")
</powershell>
EOF

  vars = {
    admin_password = var.admin_password
  }
}

resource "aws_instance" "crystal" {
  connection {
    host     = coalesce(self.public_ip, self.private_ip)
    type     = "winrm"
    user     = var.admin_username
    password = var.admin_password
  }
  ami           = var.aws_ami
  instance_type = var.aws_instance_type
  count         = var.instance_count
  key_name      = var.key_name
  tags          = local.global_tags
  volume_tags   = local.global_tags

  // iam_instance_profile = "STATIC_ROLE_NAME_SHOULD_BE_A_VARIABLE"
  tenancy              = "default"
  subnet_id            = var.aws_subnet_id
  vpc_security_group_ids = var.aws_security_group

  /*user_data = "${file("user_data")}"*/
  user_data = data.template_file.init.rendered

  root_block_device {
      volume_size           = var.root_volume_size
      volume_type           = var.root_volume_type
      encrypted             = var.root_volume_encrypted
      delete_on_termination = var.root_delete_on_termination
  }

  ebs_block_device {
    device_name           = "/dev/xvdf"
    volume_size           = var.volume_size
    volume_type           = var.volume_type
    encrypted             = var.volume_encrypted
    delete_on_termination = var.delete_on_termination
  }
  monitoring = true

}
