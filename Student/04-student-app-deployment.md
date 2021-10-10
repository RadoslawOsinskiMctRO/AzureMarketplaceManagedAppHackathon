## Challenge 4: Code deployment and infrastructure update

### Pre-requisites
App Service VS Code extension [link](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-azureappservice) <br/>
Azure Resource Manager Tools extension [link](https://marketplace.visualstudio.com/items?itemName=msazurermtools.azurerm-vscode-tools) <br/>
Azure Account extension [link](https://marketplace.visualstudio.com/items?itemName=ms-vscode.azure-account)

### Introduction
After first ARM template deployment over Marketplace, you can use your favorite DevOps tools and scripts. You have access to customer Azure subscription, using credentials assigned in Partner Center offer.
If pricing tier for customer is not changing between updates you do not need to involve Partner Center into update process. If you would like to apply new pricing model you need to navigate customer to change plan over Azure Portal. Changing a plan will trigger ARM template and you will receive notification on webhook provided in Partner Center. If plan is not modified, please go along with procedure of deployment set in your organization.

### Description
After customer activated subscription, he requests for additional web application added to solution. You need to update your infrastructure by adding new components related with App Service and Database and after it deploy your application code.
Your DevOps team prepared new [ARM templates](./Resources/Challenge-4/ARM-Templates/mainTemplate.json).
Your development team prepared TO-DO app requested by customer [todo-dotnetcore-sqldb resources](./Resources/Challenge-4/todo-dotnetcore-sqldb/Startup.cs)
To deliver solution to customer you need to take actions:
1.	Deploy new ARM Template on resource group you are managing on customer subscription
TIP: The easiest way is to use Azure Portal or Azure CLI commands 
2.	Update database schema using [runMigrations script from the resources](./Resources/Challenge-4/Scripts/runMigrations.sh)
TIP: Don’t forget about SQL server firewall rules!
3.	Deploy Web Application into App Service 
TIP: easiest way is to right click on VS Code folder and select “Deploy to WebApp”. If app will deploy correctly, you can repeat exercise by creating deployment pipeline in GitHub or Azure DevOps


### Success criteria
-	Demonstrate infrastructure update on customer subscription with App Service and Database
-	Show in App Service how ARM Template passes connection string between SQL Server and App Settings
-	Demonstrate manual deployment from Visual Studio Code or another editor


### Learning Resources
Deploy ARM Template from Azure Portal [link](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-portal)

Deploy ARM Template from CLI [link](https://docs.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-cli)

Run sample .NET Core App on App Service [link](https://docs.microsoft.com/en-us/azure/app-service/tutorial-dotnetcore-sqldb-app?pivots=platform-linux)

SaaS Fulfillment API operation for Plan Change [link](https://docs.microsoft.com/en-us/azure/marketplace/partner-center-portal/pc-saas-fulfillment-api-v2#get-httpsmarketplaceapimicrosoftcomapisaassubscriptionssubscriptionidoperationsoperationidapi-versionapiversion) 


### Advanced Challenges
Demonstrate automatic deployment via local script, GitHub or Azure DevOps pipeline.