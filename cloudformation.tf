data "aws_s3_bucket_object" "scheduler_template" {
  bucket  = "solutions-reference"
  key     = "aws-instance-scheduler/instance-scheduler.template"
}

resource "aws_cloudformation_stack" "scheduler" {
  name = "ec2-scheduler"
  template_body = file("${path.module}/deployment/instance-scheduler.template")
}
