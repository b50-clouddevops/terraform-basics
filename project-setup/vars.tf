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
        }

    }
}