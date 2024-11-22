---
title: "OnPrem"
date: 2024-05.02
description: 
draft: false
collapsible: false
weight: 2
---
### Installation

The Connector 365 E-Documents app is only available from Microsoft Dynamics 365 Business Central version 23.2, as it is based on the standard Microsoft eDocuments function.

### OnPrem
You can get the objects for the Connector 365 Base and E-Documents app from our downloadportal, so that you can use the app, these must first be published and then installed.

#### Publishing the Connector 365 Base and E-Documents App
The Connector 365 Base and E-Documents app is published via the **Business Central Administration Shell**. First transfer the files to the server on which your Business Central instance is running.

![](images/apps/adminshell.PNG)

Now start the **Business Central Administration Shell** to start the publishing process. First navigate with the Administration Sheell to the location for the file with the **cd** command.

**Example:**

```cd C:\Apps```

Now that you are in the corresponding folder, you can first publish the base app using the following command.

{{< notice info "Hinweis" >}}
 _The order of publication is important, please always publish the Connector 365 Base app first._
{{< /notice >}}
#

**Example:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\BasisApp.app"```

You should then also carry out the process for the actual Connector 365 E-Documents app.

**Example:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\E-Documents.app"```

Both apps should now be published in the system.
#

#### Installing the Connector 365 Base and E-Documents App
In the extension management of your environment, you will now see the apps as published, but they are not yet installed.

##### Installing via the Client
Open your Business Central environment, open the search function and search for **Extension management**.

There you should now find the two apps with the status not installed. By clicking on the three dots of the respective app, you can now install it in your environment via the **Install** item.

|![](images/apps/appinstallen.PNG)|
|-|

##### Install via the Administration Shell
If you want to carry out the installation via the Administration Shell (this has the advantage that you can install on several tenants at the same time), you must use the **Install-NAVApp** command. You should specify the **Tenant ID**. In the following examples, we install the apps in two tenants.

{{< notice info "Hinweis" >}}
 _The order of installation also plays a role; please always install the Connector 365 Base app first._
{{< /notice >}}
#

To install the Connector 365 Base app, use the following command:

**Example:**

```Install-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector 365 Base" -Tenant Tenant1, Tenant2```

This is followed by the Connector 365 E-Documents app:

**Example:**

```Install-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector 365 E-Documents" -Tenant Tenant1, Tenant2```

You can now start with the [Setup](/en-us/apps/mail-sender-plus/first-steps/setup/) starten.



