## Challenge 7 [Optional]: Giving customer controll

### Introduction
For now you have full access to all resources and customer have only view access. You can give customer ability to execute certain actions without giving them access to resources.
View definition is an optional artifact in Azure Managed Applications. It allows to customize overview page and add more views such as Metrics and Custom resources.
The view definition artifact must be named <b>viewDefinition.json</b> and placed at the same level as <b>createUiDefinition.json</b> and <b>mainTemplate.json</b> in the <b>.zip package</b> that creates a managed application definition.

### Success criteria
1. viewDefinition.json file added to ZIP package and deployed on subscriptionId
2. Customer can trigger at least one action from top Menu
3. Customer can trigger at least one action from left Menu

###Resources
[View Definition Artifact](https://docs.microsoft.com/en-us/azure/azure-resource-manager/managed-applications/concepts-view-definition)