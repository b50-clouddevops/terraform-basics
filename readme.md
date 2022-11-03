# All Terraform Basics will be added here

### Terraform installation link :

### Arguments & Attributes : 

Arguments  : Properties that we use to provision the infra 
Attributes : Properties that we use to print the details after the creation of infra like private, public ip ( all other details )

1) modules 
2) Datasource : This is used to fetch the information of the already existing resources on cloud.
3) Provisioners
    a) file provisioner 
    b) remote provisioner 
    c) local-exec provisioner

# What is mutable infra ?

```
Infra that does change. Which also means if v1 of applications is running on server A and if you wish to deploy v2 , you wll be deploying on the same server A. Here server remains the same and applicaion is only updated.
```

# What is immmutable infra ? ( containers introducted this concept first)

```
Infra that does not change. Which also means if v1 of applications is running on server A and if you wish to deploy v2 , you wll be deploying on a new server B. Here server and applicaion are always new. Everytime, you would be deleting the servre runing old version.
```

