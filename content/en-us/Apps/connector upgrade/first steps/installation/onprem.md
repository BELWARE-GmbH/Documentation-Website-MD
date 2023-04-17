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
You will receive the Connector 365 Upgrade App from us by mail as a runtime package suitable for your system. In order for you to use the app, it must first be published and then installed.
Since the app is only necessary if you are moving from a legacy system with Connector NAV/BC to a system with Connector 365 Apps, it is assumed here that the Connector 365 Base App is already installed on your system.

#### Publishing the Connector 365 Upgrade App
Publishing the Connector 365 Upgrade App is done through the **Business Central Administration Shell**. First, save the runtime package we delivered to you on the server running your Business Central instance.

![](images/apps/adminshell.PNG)

Now launch the **Business Central Administration Shell** to start the process of publishing. Within the Administration Shell, first navigate to the location of the runtime package using the **cd** command.

**Example:**

``cd C:\Apps``

Now that you are in the appropriate folder, you can publish the upgrade app using the following command:

**Example:**

``Publish-NAVApp -ServerInstance YourBusinessCentralInstance -Path ".\UpgradeApp.app"``

The app should now be published to the system.

{{< notice info "notice" >}}
 _In versions up to BC 16, you still need to add the -SkipVerification parameter to the command, otherwise you will get an error message._
{{< /notice >}}
#

#### Installing the Connector 365 Upgrade App

In your environment's extension management, you will now see the app as published, but it is not yet installed.

![](images/apps/ctipublishen.PNG)

##### Install via the client
Open your Business Central environment, open the search function and look for **Extension Management**.

There you should now find the app with the status not installed. By clicking on the 3 dots next to the app, you can now install it via the **Install** item in your environment.

![](/images/apps/appinstallen.PNG)

##### Install via the Administration Shell
In case you want to install via the Administration Shell (this has the advantage that you can install on several tenants at once), you have to use the **Install-NAVApp** command. When doing so, you should specify the **tenant ID**. In the following example, we install the apps in two tenants.

To install the Connector 365 Upgrade App, use the following command:

**Example:**

``Install-NAVApp -ServerInstance yourBusinessCentral instance -Name "Connector Upgrade" -Tenant Tenant1, Tenant2``

You can now start with [setup](en-us/apps/connector-upgrade/first-steps/setup/).