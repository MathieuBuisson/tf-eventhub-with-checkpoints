# tf-eventhub-consumer-with-checkpoints

## Overview

This **Terraform** configuration deploys an Azure Event Hub and a number of consumer groups based on the specified names.
It also creates the shared access policies, storage account and blob storage containers needed by event consumers to manage checkpoints and partition leases.  

The main purpose of this configuration is to demonstrate how to write composable and maintainable infrastructure code using **Terraform** modules.  
