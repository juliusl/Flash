#!/bin/bash

# create a resource group
resourceGroup="flash-test-2"
location="westus"
az group create -l $location -n $resourceGroup

# the template we will deploy
templateUri="https://raw.githubusercontent.com/juliusl/Flash/master/new-vm.json"

# deploy, specifying all template parameters directly
az group deployment create \
    --name TestDeployment \
    --resource-group $resourceGroup \
    --template-uri $templateUri
