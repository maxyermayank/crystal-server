// resource "aws_launch_template" "crystal" {
//   name_prefix   = "${local.name}-lt"
//   image_id      = var.aws_ami
//   instance_type = var.aws_instance_type
//   vpc_security_group_ids = var.aws_security_group
//   key_name      = var.key_name
//   image_id = var.aws_ami
//   instance_market_options {
//     market_type = "spot"
//   }
//   instance_type = var.aws_instance_type

//   monitoring {
//     enabled = true
//   }

//   tag_specifications {
//     resource_type = "instance"
//     tags = local.global_tags
//   }
// }

// resource "aws_autoscaling_group" "default" {
//   availability_zones = ["us-east-1a"]
//   desired_capacity   = 3
//   max_size           = 5
//   min_size           = 2

//   launch_template {
//     id      = aws_launch_template.crystal.id
//     version = aws_launch_template.crystal.latest_version
//   }
//   // tags = [local.global_tags]
// }