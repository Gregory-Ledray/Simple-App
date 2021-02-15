# This script destroys the environment needed for Simple-App to work.
# Comments are included for the following reasons:
# 1. Comments are included to justify configuration options

aws autoscaling detach-load-balancer-target-groups --auto-scaling-group-name my-asg \
  --target-group-arns "arn:aws:elasticloadbalancing:region:123456789012:targetgroup/my-targets/1234567890123456"
