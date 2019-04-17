This **Terraform** module deploys an Azure Event Hub namespace and an event hub.  

It also creates 2 shared access policies, each of which can be use for a different purpose :  
  - producing events to the namespace
  - consuming events from the namespace

For each of these access policies, it outputs the corresponding connection string.  
These connection strings can be used to configure event producer applications or consumer applications.  
