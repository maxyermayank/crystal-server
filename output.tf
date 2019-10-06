############# INSTANCE OUTPUT VARIABLES #############
output "id" {
    value = aws_instance.crystal.*.id
}
output "arn" {
    value = aws_instance.crystal.*.arn
}
output "availability_zone" {
    value = aws_instance.crystal.*.availability_zone
}
output "key_name" {
    value = aws_instance.crystal.*.key_name
}
output "private_ip" {
    value = aws_instance.crystal.*.private_ip
}
output "instance_state" {
    value = aws_instance.crystal.*.instance_state
}
output "security_groups" {
    value = aws_instance.crystal.*.security_groups
}
output "vpc_security_group_ids" {
    value = aws_instance.crystal.*.vpc_security_group_ids
}
output "subnet_id" {
    value = aws_instance.crystal.*.subnet_id
}

############# AUTO SCALING GROUP OUTPUT VARIABLES #############
// output "launch_template_arn" {
//     value = aws_launch_template.crystal.arn
// }
// output "launch_template_id" {
//     value = aws_launch_template.crystal.id
// }
// output "launch_template_default_version" {
//     value = aws_launch_template.crystal.default_version
// }
// output "launch_template_latest_version" {
//     value = aws_launch_template.crystal.latest_version
// }

// output "asg_id" {
//     value = aws_autoscaling_group.default.id
// }
// output "asg_arn" {
//     value = aws_autoscaling_group.default.arn
// }
// output "asg_availability_zones" {
//     value = aws_autoscaling_group.default.availability_zones
// }
// output "asg_min_size" {
//     value = aws_autoscaling_group.default.min_size
// }
// output "asg_max_size" {
//     value = aws_autoscaling_group.default.max_size
// }
// output "asg_default_cooldown" {
//     value = aws_autoscaling_group.default.default_cooldown
// }
// output "asg_name" {
//     value = aws_autoscaling_group.default.name
// }
// output "asg_health_check_grace_period" {
//     value = aws_autoscaling_group.default.health_check_grace_period
// }
// output "asg_health_check_type" {
//     value = aws_autoscaling_group.default.health_check_type
// }
// output "asg_desired_capacity" {
//     value = aws_autoscaling_group.default.desired_capacity
// }
// output "asg_launch_configuration" {
//     value = aws_autoscaling_group.default.launch_configuration
// }
// output "asg_vpc_zone_identifier" {
//     value = aws_autoscaling_group.default.vpc_zone_identifier
// }
// output "asg_load_balancers" {
//     value = aws_autoscaling_group.default.load_balancers
// }
// output "asg_target_group_arns" {
//     value = aws_autoscaling_group.default.target_group_arns
// }

############# SECURITY GROUP OUTPUT VARIABLES #############
output "sg_id" {
    value = aws_security_group.default.id
}
output "sg_arn" {
    value = aws_security_group.default.arn
}
output "sg_vpc_id" {
    value = aws_security_group.default.vpc_id
}
output "sg_owner_id" {
    value = aws_security_group.default.owner_id
}
output "sg_name" {
    value = aws_security_group.default.name
}
output "sg_description" {
    value = aws_security_group.default.description
}
output "sg_ingress" {
    value = aws_security_group.default.ingress
}
output "sg_egress" {
    value = aws_security_group.default.egress
}
