resource "aws_cloudformation_stack" "scheduler" {
  name = "ec2-scheduler"
  template_body = file("${path.module}/deployment/instance-scheduler.template")
}
