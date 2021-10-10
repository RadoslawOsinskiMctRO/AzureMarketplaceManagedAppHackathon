# Task 4: Azure AD Security Group Creation

## Introduction
In this challenge, you will create Azure Active Directory Security Group using Azure Portal, to use it for Azure Managed Application resources management. 

Azure Application Commercial Marketplace offer has type of Managed Application. During this Hackathon we are naming this offer as Azure Managed Application. In Azure Managed Application offer resources are deployed to a resource group and are managed by the publisher of the app. The resource group is present in the consumer's subscription, but an identity in the publisher's tenant has access to the resource group (check [types of Azure Apllication offer](https://docs.microsoft.com/en-us/azure/marketplace/plan-azure-application-offer#types-of-plans)). To make this behavior possible there is need to create appropriate identity entity on the publisher's Azure AD tenant, and give it the appropriate access. Technically this entity could be any identity object within Azure AD, like user, group or even app (check [Azure Managed Application - managed application definition - AAD](https://docs.microsoft.com/en-us/azure/azure-resource-manager/managed-applications/publish-service-catalog-app?tabs=azure-powershell#create-an-azure-active-directory-user-group-or-application) ). As a best practice there should be created Azure Active Directory Security Group (on the publisher tenant). Then, as a next steps, this group will be added to the Azure Managed Application definition [Azure Managed Application - create managed application definition](https://docs.microsoft.com/en-us/azure/azure-resource-manager/managed-applications/publish-service-catalog-app?tabs=azure-powershell#create-the-managed-application-definition-1) . Thanks to this AAD Security Group and its link to the Azure Managed Application definition, publisher will be able to manage access to the application resources, deployed on the customer subscription. Also publisher will be able to manage who on the publisher organization will be able to manage this app - through adding users to the AAD Security Group. 

## Description
In this challenge we will focus on creation of AAD Security Group on Publisher AAD tenant.  
There are several ways how AAD Security Group could be created, including creation from Azure Portal or using Azure CLI. 

Your goal is to create AAD Security Group on Publisher tenant and add at least one user to the group.

## Success Criteria

1. On Publisher's tenant there is created AAD Security Group
2. In the Security Group there is at least one member added from the Publisher AAD tenant 

## Learning Resources

- [Types of Azure Apllication offer plans](https://docs.microsoft.com/en-us/azure/marketplace/plan-azure-application-offer#types-of-plans)
- [Azure Managed Application - managed application definition - AAD](https://docs.microsoft.com/en-us/azure/azure-resource-manager/managed-applications/publish-service-catalog-app?tabs=azure-powershell#create-an-azure-active-directory-user-group-or-application)
- [Azure Managed Application - create managed application definition](https://docs.microsoft.com/en-us/azure/azure-resource-manager/managed-applications/publish-service-catalog-app?tabs=azure-powershell#create-the-managed-application-definition-1)
- [Create a basic group and add members using Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-groups-create-azure-portal)
- [Manage app and resource access using Azure Active Directory groups](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/active-directory-manage-groups?context=/azure/active-directory/enterprise-users/context/ugr-context)