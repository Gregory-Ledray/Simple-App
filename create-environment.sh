# This script creates the environment needed for Simple-App to work.
# Comments are included for the following reasons:
# 1. Comments are included to justify configuration options

aws ecr create-repository --repository-name gregory-ledray-simple-app --region us-east-2

mkdir Simple-App && cd ./Simple-App

aws ecs register-task-definition --region us-west-2 --cli-input-json file://$HOME/Simple-App/task-definition.json
aws ecs create-cluster --region us-west-2 --cluster-name default
aws ecs create-service --region us-west-2 --service-name Simple-App-service --task-definition simple-app:1 --desired-count 2 --launch-type "FARGATE" --network-configuration "awsvpcConfiguration={subnets=[subnet-abcd1234],securityGroups=[sg-abcd1234]}"

#aws autoscaling create-auto-scaling-group --auto-scaling-group-name my-asg \
#  --launch-template "LaunchTemplateName=my-launch-template,Version=1" \
#  --vpc-zone-identifier "subnet-5ea0c127,subnet-6194ea3b,subnet-c934b782" \
#  --target-group-arns "arn:aws:elasticloadbalancing:region:123456789012:targetgroup/my-targets/1234567890123456" \
#  --max-size 5 --min-size 1 --desired-capacity 2
