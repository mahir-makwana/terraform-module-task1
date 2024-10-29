output "nginx-server" {
  description = "nginx-server URL"
  value       = module.ec2_nginx.nginxURL
}
