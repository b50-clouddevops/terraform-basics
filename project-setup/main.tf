# module "frontend" {
#     source       = "./ec2"
#     COMPONENT    = "frontend"
#     APP_VERSION  = "0.0.2"
# }

# module "cart" {
#     source       = "./ec2"
#     COMPONENT    = "cart"
#     APP_VERSION  = "0.0.2"
# }

# module "catalogue" {
#     source       = "./ec2"
#     COMPONENT    = "catalogue"
#     APP_VERSION  = "0.1.0"
# }

# module "payment" {
#     source       = "./ec2"
#     COMPONENT    = "payment"
#     APP_VERSION  = "0.0.2"
# }

# module "shipping" {
#     source       = "./ec2"
#     COMPONENT    = "shipping"
#     APP_VERSION  = "0.0.2"
# }



module "mysql" {
    source       = "./ec2"
    COMPONENT    = "mysql"
    APP_VERSION  = "0.0.2"
}