module "frontend" {
    for_each     = var.ALL_COMPONENTS
    source       = "./ec2"
    COMPONENT    = each.key  # declarative way of running loops
    APP_VERSION  = each.value.app_version # declarative way of running loops
}
