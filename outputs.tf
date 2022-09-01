output "Load_Balanser_Address" {
  value = "http://${module.ecs.alb_hostname}/"
}
