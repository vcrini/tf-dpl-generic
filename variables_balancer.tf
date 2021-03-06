
variable "alarm_arn" {
  type        = string
  description = "SNS topic to alert when balancer fails"
}
variable "lb_name" {
  description = "balancer name"
  type        = string
}
variable "listener" {
  description = "map representing listener configuration"
  type        = map(any)
}
variable "ssl_certificate_arn_name" {
  description = "ssl certificate used by load balancer"
  type        = string
}
variable "target_group" {
  description = "map representing target group configuration"
  type        = map(any)
}
variable "target_group_prefix" {
  description = "short string used to differentiate each target group prefix"
  type        = string
}
variable "vpc_id" {
  description = "id representing AWS Virtual Private Cloud"
  type        = string
}
locals {
  ssl_certificate_arn = "arn:aws:acm:${local.region}:${local.account_id}:${var.ssl_certificate_arn_name}"
}
