## Challenge 6: Use metered API

### Introduction

Azure managed applications enable you to offer cloud solutions that are easy for consumers to deploy and operate. You implement the infrastructure and provide ongoing support. To make a managed application available to all customers, publish it in the Azure marketplace. To make it available to only users in your organization, publish it to an internal catalog. 

In this challenge you'll work with metered api. The metered billing APIs should be used when the publisher creates custom metering dimensions for an offer to be published in Partner Center. Integration with the metered billing APIs is required for any purchased offer that has one or more plans with custom dimensions to emit usage events.

### Starting point

In order to complete the challenge you will need to have **at least** [Challenge 2](./02-student-modify_and_redeploy.md) and [Challenge 3](./03-00-student-create_azure-marketplace-offer.md) completed in order to continue with below tasks.

For simple API calls, refer to [this Postman collection](https://raw.githubusercontent.com/microsoft/commercial-marketplace-managed-application-metering-samples/main/Managed%20app%20metering.postman_collection.json). To use them, you'll need to either use [web version of Postman](https://www.postman.com/) or [download the client side app](https://www.postman.com/downloads/). Then follow this tutorial on [import the collection](https://learning.postman.com/docs/getting-started/importing-and-exporting-data/) with API calls and modify values in configuration to supply appropriate calls.

### Success criteria

You can select either **direct** or **indirect** option with focus on calling metered api.

Your task is to provide:
1. custom meters, which needs to include:
   1. quantity should be 1
   2. dimension should be named dim3
   3. free quantity should be set to 10
2. meter request should be demonstrated locally either calling AIMS or either publisher service - you can demonstrate successful API calls with output from preferred tool for calling REST API (suggested tools in **Resources section** below) or you can create your own tool in language if your choice to output successful result and information from Azure Marketplace Service

__Output Example__:
```
{
   "usageEventId": <guid>, // unique identifier associated with the usage event in Microsoft records
   "status": "Accepted" // this is the only value in case of single usage event
   "messageTime": "2020-01-12T13:19:35.3458658Z", // time in UTC this event was accepted
   "resourceId": <guid>, // unique identifier of the resource against which usage is emitted. For SaaS it's the subscriptionId.
   "quantity": 5.0, // amount of emitted units as recorded by Microsoft
   "dimension": "dim1", // custom dimension identifier
   "effectiveStartTime": "2018-12-01T08:30:14", // time in UTC when the usage event occurred, as sent by the ISV
   "planId": "plan1", // id of the plan purchased for the offer
}
```

## Resources
- [Configure a managed application plan](https://docs.microsoft.com/en-us/azure/marketplace/azure-app-managed)
- [Custom meter dimensions](https://docs.microsoft.com/en-us/azure/marketplace/azure-app-managed#add-a-custom-meter-dimension-optional)
- [Marketplace metered billing API](https://docs.microsoft.com/en-us/azure/marketplace/marketplace-metering-service-apis)
- [Register an application with the Microsoft Identity platform](https://docs.microsoft.com/en-us/graph/auth-register-app-v2)
- [Posting custom meters for a Commercial Marketplace managed app offer example](https://github.com/microsoft/commercial-marketplace-managed-application-metering-samples)
- [Azure managed application gets secret from publisher's Azure Key Vault](https://github.com/arsenvlad/azure-managed-app-publisher-secret)
- Different REST clients like for an example [Postman](https://www.postman.com/) or [Insomnia](https://insomnia.rest/download) or [REST client for Visual Studio Code](https://marketplace.visualstudio.com/items?itemName=humao.rest-client) or [curl](https://curl.se/)
- [New Guid Powershell](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/new-guid?view=powershell-7.1)