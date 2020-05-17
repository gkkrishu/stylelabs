Please proceed with the following steps inorder to execute the terraform script by using windows power shell

* Terraform must be installed in your machine and add it in your system path variable
* you must install azure CLI  in you powershell
* After successfull installation use az login to login in to your azure account
* We have 3 files named main.tf, terraform.tfvars and variables.tf

  where, terraform.tfvars can be used to populate with your actual credential details and actual values
         variables.tf can be used to declare variables
         main.tf has the actual plan of terraform

* In terraform.tfvars, you can change the location, server type, number of vm's, admin username and password etc

* you need to put all the files under terraform installed dir, by that, terraform will seach and initialize all .tf extension files.

* once you have done with your setup, Issue terraform init command to intialise it

* Issue terraform plan to check the changes and errors if any

*finally, use terraform apply to apply the changes in you azure account as mentioned in the main.tf file.

* login into your account, you could see the vm's running and associated resoure groups, network configuration...
