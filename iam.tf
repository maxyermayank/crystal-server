// resource "aws_iam_policy" "terraform-readonly" {
//   name = "terraform-readonly"
//   path = "/"
//   description = "Readonly policy for terraform planning"
//   policy = "${file("policies/terraform-readonly.json")}"
// }

// resource "aws_iam_role" "terraform-readonly" {
//   name = "terraform-readonly"
//   path = "/",
//   assume_role_policy = "${data.aws_iam_policy_document.assume-terraform-readonly-role-policy.json}"
// }

// resource "aws_iam_policy_attachment" "terraform-readonly-attachment" {
//   name = "Terraform read-only attachment"
//   roles = ["${aws_iam_role.terraform-readonly.name}"]
//   policy_arn = "${aws_iam_policy.terraform-readonly.arn}"
// }