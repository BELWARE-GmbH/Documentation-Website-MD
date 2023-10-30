---
title: "OnPrem"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Installation

### OnPrem
You will receive the objects for the Connector 365 Base & Custom Filename App from us by mail, in order for you to use the app, they must first be published and then installed.

#### Publishing the Connector 365 Base & Custom Filename App
Publishing the Connector 365 Base & Custom Filename App is done via the **Business Central Administration Shell**. First, transfer the files we sent to you to the server where your Business Central instance is running.

|![](images/apps/adminshell.PNG)|
|-|

Now start the **Business Central Administration Shell** to start the process of publishing. Using the Administration Shell, first navigate to the location for the file using the **cd** command.

**Example:**

```cd C:\Apps```

Now that you are in the appropriate folder, you can use the following command to first publish the base app

{{< notice info "Hinweis" >}}
The order of publication is important, please always publish the **Connector 365 Base** App first.
{{< /notice >}}
#

**Example:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\BasisApp.app"```

Afterwards, you should also perform the process for the actual **Connector 365 Custom Filename** App

**Example:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\customfilename.app"```

Both apps should now be published in the system.

#

#### Installing the Connector 365 Base & Custom Filename App
In the extension management of your environment you will now see the apps as published, but they are not installed yet.

##### Install via the client
Open your Business Central environment, open the search function and search for **Extension Management**.

|![](images/apps/appinstallen.PNG)|
|-|

There you should now find the two apps with the status not installed. By clicking on the 3 dots of the respective app, you can now install it in your environment via the **Install** item.

##### Install via the Administration Shell
In case you want to install via the Administration Shell (this has the advantage that you can install on several tenants at once), you have to use the **Install-NAVApp** command. You should specify the **tenant ID** when doing this. In the following examples we install the apps in two tenants.

{{< notice info "Hinweis" >}}
The order of installation also matters, please always install the Connector 365 Base App first.
{{< /notice >}}
#

To install the Connector 365 Base App, use the following commands:

**Example:**

```Sync-NAVApp -ServerInstance $IhreBusinessCentralInstanz -Name "Connector 365 Base" -Version $AppVersion -Tenant Tenant1, Tenant2```
```Install-NAVApp -ServerInstance $IhreBusinessCentralInstanz -Name "Connector 365 Base" -Version $AppVersion -Tenant Tenant1, Tenant2```

The Connector 365 Custom Filename App follows:

**Beispiel:**

```Sync-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector 365 Custom Filename" -Version $AppVersion -Tenant Tenant1, Tenant2```
```Install-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector 365 Custom Filename" -Version $AppVersion -Tenant Tenant1, Tenant2```

You can now start with the [setup](/en-us/apps/custom-filename/first-steps/setup/).



