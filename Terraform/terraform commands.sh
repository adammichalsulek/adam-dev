#Initilize Terraform
terraform init

#Plan changes with following command to create an execution plan.
#Analyze your configuration and show you what changes it plans to make to your infrastructure
terraform plan

#Apply changes and create or modify resources
terraform apply

#Inspect and display the current state of your infrastructure
terraform show

#list resources in the state,
terraform state
#remove a resource from the state
terraform state rm 
#move a resource between workspaces
terraform state mv

#terraform output
#terraform destroy