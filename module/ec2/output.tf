output "nginxURL" {
  description = "The URL to access the Nginx server"
  value       = "http://${aws_instance.mahir_nginx.public_ip}"
}


