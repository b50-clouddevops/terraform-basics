variable "sample" {
    default = "Hello World"
}

output "sample-op" {
    value = var.sample 
}

output "sample-op1" {
    value = "Value is ${var.sample}"
}


# A variable can be accessed with or without ${} only if the variable is called. But in case if it is needed to add with some other strings then we need to use double quotes.data "" "name" {
  
}