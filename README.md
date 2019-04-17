# tf-eventhub-consumer-with-checkpoints

## Overview

This **Terraform** configuration deploys an Azure Event Hub and a number of consumer groups based on the specified names.
It also creates the shared access policies, storage account and blob storage containers required by the event processor to manage checkpoints and lease information.  

The main purpose of this configuration is to demonstrate how to write composable and maintainable infrastructure code using **Terraform** modules.  
