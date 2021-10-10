# Challenge 3: Create an Azure Marketplace Offer via Partner Center

## Introduction
In this challenge you will work towards publishing your Azure Managed Application on Azure Marketplace, so all Azure users could potentially buy it.

### Prerequisites:
1. [Access to Microsoft Partner Center](https://partner.microsoft.com/en-US/) with a *pre-configured Azure Application* Commercial Offer.
2. The zip file that you created on your previous challenge that "wraps" you Azure Managed Application.
3. A "publisher's" Azure Active Directory Tenant, that will be used as the "control plane" of your managed app.
4. An Azure Subscription, that will be used to test (*Preview*) the deployment of your Azure app via Azure Marketplace.
</br></br>

## Description

On this challenge you will publish the Azure Managed Application you created on the previous challenge to Azure Marketplace. To do so, you will mostly work on Microsoft Partner Center, but you will also need to work a bit on the publisher's Azure AD.
<br/><br/>
Using your provided credentials to Microsoft's Partner Center, you should find an already existing Commercial Offer of *Azure Application* offer type under *Commercial Marketplace Section*. The offer should be already properly configured, *from a marketing perspective*, but would be missing key technical aspects. By following the below steps you should be able to complete those as well.
### Steps:

1. Associate the existing *offer* with your Azure Managed Application by uploading the previously created "Azure Application package" (zip file from previous challenge), 
2. Use a *test (Preview)* Azure subscription in order to test that it works before making it public.
3. Publish your managed application and wait for the publishing procedure to finish (this might take 3-4 hours).
</br></br>

## *Sub* challenges 
1. For meeting success criteria number 2 you will need to create an Azure AD security group and *hook* accordingly. Follow *Azure AD - Security Group Creation* from learning resources to do so.
2. For meeting success criteria number 3 you will need to create a web hook. TIP: for this demo, use https://pipedream.com/ as webhook target.

##Tips
1. When creating a Plan inside an offer make sure that you have the price set at $0. The test account does not have Payout profile so it will not allow you to publish an offer with pricing </br> 


## Success Criteria
1. Publish an Azure Application Offer on Microsoft Partner Center that makes your Azure Managed Application available **only** *(preview)* to your Azure Subscription.
2. Using Azure Marketplace deploy this solution to your Azure subscription and make sure that *default* users from Azure AD do not have access to storage account keys, while users from a "specific" Security Group of Azure AD do.
3. Check the webhook you created to inspect the raw events. 

## Learning Resources

1. [Partner Center Walkthrough *(Video)*](https://youtu.be/3ODHzEjomro)
   - focus on minutes 5:10 - 5:30 for the *Preview* configuration (do not bother with Azure AD App Registration) 
   - focus on 8:50 for technical configuration
2. [Azure AD - Security Group Creation](./Student/05-02-AAD-creation.md)
3. [Partner Center Registration *(video)*](https://aka.ms/AzureMarketplaceManagedAppRegistration) 
4. [Microsoft Commercial Marketplace](https://docs.microsoft.com/en-us/azure/marketplace/overview)