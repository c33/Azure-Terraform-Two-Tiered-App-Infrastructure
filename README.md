# Azure-Terraform-Two-Tiered-App-Infrastructure
Sample architecture to deploy an Azure VM and SQL DB on logical SQL server, with Bastion Host for VM access, using HashiCorp Terraform. This was developed as a rudimentary architecture for a college project and should not be considered enterprise-ready, the author accepts no liability for any IT incidents or damages resulting from its deployment.

**#Instructions For Use**

1. If using Terraform 4.0 or higher as a provider, you must explicitly specify the subscription you're deploying into the 03-providers.tf file in the **resource_group_provisioner**, **1_iaas_architecture_provisioner_terraform** and **2_iaas_architecture_provisioner_terraform_multivm** folders, if using version 3.X, these files do not need to specify a subscription and can use the az session context (though it is safer to specify).

2. Deploy the resource group via a Terraform init and Terraform apply from within the **resource_group_provisioner** folder. 

3. Deploy the architecture with one or five VMs by running Terraform init and Terraform apply from within the **1_iaas_architecture_provisioner_terraform** or **2_iaas_architecture_provisioner_terraform_multivm** folder, respectively.
