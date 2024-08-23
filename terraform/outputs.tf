output "alb_dns_name" {
  description = "The DNS name of the ALB"
  value       = aws_lb.app_alb.dns_name
}

output "nginx_instance_id" {
  description = "The ID of the NGINX EC2 instance"
  value       = aws_instance.nginx.id
}

output "app_instance_ids" {
  description = "The IDs of the application EC2 instances"
  value       = aws_instance.app[*].id
}