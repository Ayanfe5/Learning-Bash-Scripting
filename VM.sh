# get resource group name

read -p 'resource-group name: ' resourceGroupName

# get VM

read -p 'VM name: ' vmName

# get username

read -p 'username: ' username

# create resource gource group

az group create --name $resourceGroupName --location eastus


#  Create VM

az vm create \
  --resource-group $resourceGroupName \
  --name $vmName \
  --image UbuntuLTS \
  --admin-username $username \
  --ssh-key-values ~/.ssh/id_rsa.pub


