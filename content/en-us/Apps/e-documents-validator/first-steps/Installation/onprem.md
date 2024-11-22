---
title: "OnPrem"
date: 2024-05.02
description: 
draft: false
collapsible: false
weight: 2
---
### Installation

The Connector 365 E-Documents Validator app is available starting from Microsoft Dynamics 365 Business Central version 23.2, as it is based on Microsoft’s standard functionality for electronic documents.

### OnPrem
You will receive the objects for the Connector 365 Base & E-Documents Validator app via email. To use the app, you must first publish and then install it.

#### Publishing the Connector 365 Base and E-Documents Validator app
The publishing of the Connector 365 Base & E-Documents Validator app is done via the **Business Central Administration Shell**. First, transfer the files we sent you to the server where your Business Central instance is running.

![](images/apps/adminshell.PNG)

Now, start the **Business Central Administration Shell** to begin the publishing process. Use the Administration Shell to navigate to the location of the file with the **cd** command.

**Example:**

```cd C:\Apps```

Now that you are in the correct folder, you can publish the base app using the following command:

{{< notice info "Note" >}}
 _The order of publishing is important; please always publish the Connector 365 Base app first._
{{< /notice >}}
#

**Example:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\BasisApp.app"```

Next, you should also perform the process for the actual Connector 365 E-Documents Validator app.

**Example:**

```Publish-NAVApp -ServerInstance IhreBusinessCentralInstanz -Path ".\E-Documents Validator.app"```

Both apps should now be published in the system.

#### Installing the Connector 365 Base & E-Documents Validator App
In the extension management of your environment, the apps will now be shown as published, but they are not yet installed.

##### Installing via the Client
Open your Business Central environment, use the search function, and look for **Extension Management**.

You should now see both apps with the status “not installed.” By clicking on the three dots of each app, you can install them in your environment by selecting **Install**.

|![](images/apps/appinstallen.PNG)|
|-|

##### Installing via the Administration Shell
If you want to perform the installation via the Administration Shell (this has the advantage of allowing installation on multiple tenants at once), you need to use the **Install-NAVApp** command. You should specify the **Tenant ID**. In the following examples, we will install the apps in two tenants.

{{< notice info "Note" >}}
 _The order of installation also matters; please always install the Connector 365 Base app first._
{{< /notice >}}
#

To install the Connector 365 Base app, use the following command:

**Example:**

```Install-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector 365 Base" -Tenant Tenant1, Tenant2```

ENext, install the Connector 365 E-Documents Validator app:

**Example:**

```Install-NAVApp -ServerInstance IhreBusinessCentralInstanz -Name "Connector 365 E-Documents Validator" -Tenant Tenant1, Tenant2```

You can now start with the [setup](/en-us/apps/e-documents-validator/first-steps/setup/).



