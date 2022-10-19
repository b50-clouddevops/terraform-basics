# Map variable

variable "ALL_COMPONENTS" {
    default = {
        mongodb = {
            app_version = "null"
        },
        mysql = {
            app_version = "null"
        },
        redis = {
            app_version = "null"
        },
        rabbitmq = {
            app_version = "null"
        },
        catalogue = {
            app_version = "null"
        },
        cart = {
            app_version = "null"
        },
        user = {
            app_version = "null"
        },
        shipping = {
            app_version = "null"
        },
        payment = {
            app_version = "null"
        },
        frontend = {
            app_version = "null"
        },

    }
}