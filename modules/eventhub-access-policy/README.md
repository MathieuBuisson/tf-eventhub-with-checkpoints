This **Terraform** module deploys Azure Event Hubs access policies.  

It assumes 2 major use cases :  
  - producing events to the specified Event Hub  
  - consuming events from the specified Event Hub  

The use case is specified via the `access_type` variable and permissions associated with the policy are derived from the `access_type`.  
