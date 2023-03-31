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
You will receive the objects for the Connector 365 Base & Addressee Control App from us by mail. These must first be published and then installed.

#### Publish the Connector 365 Base & Addressee Control app
Publishing the Connector 365 Base & Addressee Control app is done via the **Business Central Administration Shell**. First, transfer the files we send you to the server where your Business Central instance is running.

![](images/apps/adminshell.PNG)

Now start the **Business Central Administration Shell** to start the process of publishing. Using the Administration Shell, first navigate to the location for the file using the **cd** command.

**Example:**

```cd C:\Apps```

Now that you are in the appropriate folder, you can use the following command to first publish the base app

{{< notice info "notice" >}}
 _The order of publication is important, please always publish the Connector 365 Base App first._}
{{< /notice >}}
#

**Example:**

```Publish-NAVApp -ServerInstance yourBusinessCentralinstance -Path ".\BaseApp.app"```

Afterwards you should also perform the process for the actual Connector 365 Addressee Control app

**Example:**

```Publish-NAVApp -ServerInstance yourBusinessCentralinstance -Path ".\AddresseeControl.app"```

Both apps should now be published in the system.

{{< notice info "Note" >}}
 _In versions up to BC 16, you must still add the -SkipVerification parameter to the command, otherwise an error message will occur._
{{< /notice >}}
#

#### Installing the Connector 365 Base & Addressee Control app

In the extension management of your environment you will now see the apps as published, but they are not yet installed.

![](images/apps/ctipublishde.PNG)

##### Installing via the Client
Open your Business Central environment, open the search function and search for **Extension Management**.

There you should now find the two apps with the status not installed. By clicking on the 3 dots of the respective app, you can now install it in your environment via the **Install** item.

![](images/apps/appinstallde.PNG)

##### Installing via the Administration Shell
In case you want to install via the Administration Shell (this has the advantage that you can install on several tenants at once), you have to use the **Install-NAVApp** command. You should specify the **tenant ID** when doing this. In the following examples we install the apps in two tenants.

{{< notice info "Note" >}}
 _The installation order also matters, please always install the Connector 365 Base app first_.
{{< /notice >}}
#

To install the Connector 365 Base app, use the following command:

**Example:**

```Install-NAVApp -ServerInstance yourBusinessCentralinstance -Name "Connector 365 Base" -Tenant Tenant1, Tenant2```

The Connector 365 Addressee Control App follows:

**Example:**

```Install-NAVApp -ServerInstance yourBusinessCentralinstance -Name "Connector 365 Addressee Control" -Tenant Tenant1, Tenant2```

You can now start with the [Setup](en-us/apps/addressee-control/first-steps/setup/).



