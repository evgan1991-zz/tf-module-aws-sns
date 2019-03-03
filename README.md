# Summary

Module for creating Simple Notification Service.
Can automatically create subscriptions of the following types: sqs, sms, lambda, application (http or https are partially supported, email is NOT SUPPORTED).

## Usage example

```hcl
module "sns" {
  source     = "tf-module-aws-sns/"
  name       = "My_SNS"
  topic_subscription = {
    protocol = "sqs"
    endpoint = arn:aws:sqs:eu-west-1:800457684105:subscription_SQS
  }

```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| project | Project name will be used for naming resources in pattern %PROJECT_NAME%-%ENVIRONMENT_NAME% | | "project" | no |
| environment | Environment name will be used for naming resources in pattern %PROJECT_NAME%-%ENVIRONMENT_NAME% | | "test" | no |
| tags | A mapping of tags to assign to the queue. | "map" | {} | no |
| name | The friendly name for the SNS topic. By default generated by Terraform. | "string" | "" | no |
| display_name | The display name for the SNS topic | "string" | "" | no |
| policy | The fully-formed AWS policy as JSON. For more information about building AWS IAM policy documents with Terraform | "string" | "" | no |
| delivery_policy | The SNS delivery policy. More on AWS documentation | "string" | "" | no |
| application_success_feedback_role_arn | The IAM role permitted to receive success feedback for this topic | "string" | "" | no |
| application_success_feedback_sample_rate | Percentage of success to sample | "string" | "" | no |
| application_failure_feedback_role_arn | IAM role for failure feedback | "string" | "" | no |
| http_success_feedback_role_arn | The IAM role permitted to receive success feedback for this topic | "string" | "" | no |
| http_success_feedback_sample_rate | Percentage of success to sample | | 100 | no |
| http_failure_feedback_role_arn | IAM role for failure feedback | "string" | "" | no |
| kms_master_key_id | The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. For more information | "string" | "" | no |
| lambda_success_feedback_role_arn | The IAM role permitted to receive success feedback for this topic | "string" | "" | no |
| lambda_success_feedback_sample_rate | Percentage of success to sample | "" | 100 | no |
| lambda_failure_feedback_role_arn | IAM role for failure feedback | "string" | "" | no |
| sqs_success_feedback_role_arn | The IAM role permitted to receive success feedback for this topic | "string" | "" | no |
| sqs_success_feedback_sample_rate | Percentage of success to sample | | 100 | no |
| sqs_failure_feedback_role_arn | IAM role for failure feedback | "string" | "" | no |
| variables for subscriptions |
| topic_subscription | protocol and endpoint for topic subscription. The protocol to use. The possible values for this are: sqs, sms, lambda, application. (http or https are partially supported) (email is option but unsupported). The endpoint to send data to, the contents will vary with the protocol. | "map" | { protocol = "" endpoint = "" } | no |
| endpoint_auto_confirms | Indicating whether the end point is capable of auto confirming subscription e.g., PagerDuty (default is false) | "string" | "false" | no |
| confirmation_timeout_in_minutes | Indicating number of minutes to wait in retying mode for fetching subscription arn before marking it as failure. Only applicable for http and https protocols | | 1 | no |
| raw_message_delivery | Indicating whether or not to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property) | "string" | "false" | no |



## Outputs

| Name | Description |
|------|-------------|
| subscription_id | The ARN of the subscription |
| subscription_topic_arn | The ARN of the topic the subscription belongs to |
| subscription_protocol | The protocol being used |
| subscription_endpoint | The full endpoint to send data to (SQS ARN, HTTP(S) URL, Application ARN, SMS number, etc.) |
| subscription_arn | The ARN of the subscription stored as a more user-friendly property |
