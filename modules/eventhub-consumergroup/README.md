This **Terraform** module deploys **consumer groups** within Azure **Event Hubs**.  

A consumer group is a view (state, position, or offset) of an entire event hub. Consumer groups enable multiple consuming applications to each have a separate view of the event stream, and to read the stream independently at their own pace and with their own offsets.  

In a event stream architecture, each consumer application typically corresponds to a consumer group.  
This enables each consuming application to have its own separate view of the event hub.  
