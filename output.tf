output "subscription_id" {
  value       = "${aws_sns_topic_subscription.this.0.id}"
  description = "The ARN of the subscription"
}

output "subscription_topic_arn" {
  value       = "${aws_sns_topic_subscription.this.0.topic_arn}"
  description = "The ARN of the topic the subscription belongs to"
}

output "subscription_protocol" {
  value       = "${aws_sns_topic_subscription.this.0.protocol}"
  description = "The protocol being used"
}

output "subscription_endpoint" {
  value       = "${aws_sns_topic_subscription.this.0.endpoint}"
  description = "The full endpoint to send data to SQS ARN HTTP HTTPS URL Application ARN SMS number etc."
}

output "subscription_arn" {
  value       = "${aws_sns_topic_subscription.this.0.arn}"
  description = "The ARN of the subscription stored as a more user-friendly property"
}
