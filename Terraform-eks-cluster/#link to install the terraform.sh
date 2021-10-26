#link to install the terraform 
wget https://releases.hashicorp.com/terraform/1.0.8/terraform_1.0.8_linux_amd64.zip
#after that we need to unzip the file 
unzip  terraform_1.0.8_linux_amd64.zip
#after unzip the delete the zip file which is not required
rm -f terraform_1.0.8_linux_amd64.zip
#observe that we need to run the terraform whith every user thats y we are moving the terraform to the /usr/local/bin
mv terraform /usr/local/bin
#after this they will provide one github link which make u know the all the details of the cluster 
#in order to run the git we required git in the ec2
yum install git
#so git ready ,wat next copy the git url which was given by the terrafom people
git clone https://github.com/hashicorp/learn-terraform-provision-eks-cluster
#this link will create one folder called learn-terraform-provision-eks-cluster ,observe this clearly 
#you need to be inside the folder in order to make the cluster 
cd learn-terraform-provision-eks-cluster
#observe or make sure that u r inside the folder ,observe the .tf files 
#wat u need to do next ,,,,you need to make init
terraform init -upgrade
#inorder to what and all details are there i.e what all the resources are creating 
terraform plan
#to implement 
terraform apply
#after doing it ensure to press yes
#after the apply make sure that u will get the output copy the output which will hep u to make the config file which will help u to connect with cluster while you are using kubctl (client)