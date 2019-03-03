output "subscription_id" {
  description = "The ARN of the subscription"
  value = "${aws_sns_topic_subscription.this.0.id}"
}
output "subscription_topic_arn" {
  description = "The ARN of the topic the subscription belongs to"
  value = "${aws_sns_topic_subscription.this.0.topic_arn}"
}
output "subscription_protocol" {
  description = "The protocol being used"
  value = "${aws_sns_topic_subscription.this.0.protocol}"
}
output "subscription_endpoint" {
  description = "The full endpoint to send data to (SQS ARN, HTTP(S) URL, Application ARN, SMS number, etc.)"
  value = "${aws_sns_topic_subscription.this.0.endpoint}"
}
output "subscription_arn" {
  description = "The ARN of the subscription stored as a more user-friendly property"
  value = "${aws_sns_topic_subscription.this.0.arn}"
}
