variable "sample" {
    default = "Hello World"
}

output "sample-op" {
    value = var.sample 
}

output "sample-op1" {
    value = "Value is ${var.sample}"
}


# A variable can be accessed with or without ${} only if the variable is called. But in case if it is needed to add with some other strings then we need to use double
# There is no concept of single quores in terraform.


variable "number" {
    default = 100 
}

output "number" {
    value = var.number  
}

variabl "ex-list" {
    default = [
        "AWS",
        "GCP",
        "DevOps",
        100,
        true,
        Verma 
    ]
}


# From the above list, you can see that data in list can be of any type indivudually. 
output "ex-list-op" {
    value = ""
}

