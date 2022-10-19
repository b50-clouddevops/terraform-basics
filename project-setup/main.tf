module "frontend" {
    for_each     = var.ALL_COMPONENTS
    source       = "./ec2"
    COMPONENT    = 
    APP_VERSION  = "0.0.2"
}
