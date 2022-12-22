---
title: "OnPrem"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 2
---
## Installation 

### OnPrem 

You will receive the objects for the Connector 365 Base & SMTP2FAX App from us by mail. In order for you to use the app, these must first be published and then installed. 


#### Publishing the Connector 365 Base & SMTP2FAX App 

Publishing the Connector 365 Base & SMTP2FAX App is done via the Business Central Administration Shell. First, transfer the files we sent to you to the server on which your Business Central instance is running. 

![](images/apps/adminshell.PNG)

Now launch the Business Central Administration Shell to start the process of publishing. Using the Administration Shell, first navigate to the location for the file using the cd command. 

  

Example: 

  

```cd C:\Apps```

  

Now that you are in the appropriate folder, you can publish the base app first using the following command. 

  

The order of publishing is important, please always publish the Connector 365 Base App first. 

Example: 

  

Publish-NAVApp -ServerInstance yourBusinessCentralInstance -Path ".\BasisApp.app" 

  

Then publish the actual Connector 365 SMTP2FAX app. 

  

Example: 

  

Publish-NAVApp -ServerInstance YourBusinessCentralInstance -Path ".\SMTP2FAX.app" 

  

Both apps should now be published to the system. 

  

In versions up to BC 16 you still need to add the -SkipVerification parameter to the command, otherwise you will get an error message. 

Installing the Connector 365 Base & SMTP2FAX App 

In the extension management of your environment you will now see the apps as published, but they are not installed yet. 

  

  

Install via the client 

Open your Business Central environment, open the search function and look for the extension management. 

  

There you should now find the two apps with the status not installed. By clicking on the 3 dots of the respective app, you can now install it in your environment via the Install item. 

  

  

Install via the Administration Shell 

In case you want to install the app via the Administration Shell (this has the advantage that you can install on several tenants at once), you have to use the Install-NAVApp command. You should specify the tenant ID. In the following examples we install the apps in two tenants. 

  

The order of installation also matters, please always install the Connector 365 Base app first. 

To install the Connector 365 Base App, use the following command: 

  

Example: 

  

Install-NAVApp -ServerInstance yourBusinessCentral instance -Name "Connector 365 Base" -Tenant Tenant1, Tenant2. 

  

The Connector 365 SMTP2FAX app still follows: 

  

Example: 

  

Install-NAVApp -ServerInstance YourBusinessCentralInstance -Name "Connector 365 SMTP2FAX" -Tenant Tenant1, Tenant2. 

  

You can now start with the setup. 