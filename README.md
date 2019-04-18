# tf-eventhub-with-checkpoints

## Overview

This is primarily an example to demonstrate how to write composable and maintainable infrastructure code using **Terraform** modules.  

This **Terraform** configuration deploys an **Azure Event Hub** and a number of consumer groups based on the specified names.

It also provisions Azure resources needed by event consumers to manage checkpoints and partition leases :  
  - Event Hub shared access policies  
  - Storage account  
  - Blob storage containers  
