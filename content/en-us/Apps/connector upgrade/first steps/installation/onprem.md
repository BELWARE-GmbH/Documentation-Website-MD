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
You will receive the Connector 365 Upgrade App from us by mail as a runtime package suitable for your system. In order for you to be able to use the app, it must first be published and then installed.
As the app is only necessary if you switch from a legacy system with Connector NAV/BC to a system with Connector 365 Apps, it is assumed here that the Connector 365 Base App is already installed on your system.

#### Publishing the Connector 365 Upgrade App
Publishing the Connector 365 Upgrade App is done via the **Business Central Administration Shell**. First save the runtime package we delivered to you on the server on which your Business Central instance is running.

![](images/apps/adminshell.PNG)

Now start the **Business Central Administration Shell** to start the process of publishing. Within the Administration Shell, first navigate to the location of the runtime package using the **cd** command.

**Example:**

```cd C:\Apps```

Now that you are in the appropriate folder, you can publish the Upgrade App using the following command:

**Example:**

```Publish-NAVApp -ServerInstance YourBusinessCentralInstance -Path ".\UpgradeApp.app -SkipVerification"```

The app should now be published in the system.

#### Install the Connector 365 Upgrade App

In the extension management of your environment, the app is now shown as published, but it is not yet installed.

![](images/apps/Upgrade%20App/en/published-not-installed.png)

##### Install via Client
Open your Business Central environment, open the search function and search for **Extension Management**.

You should now find the app there with the status not installed. By clicking on the 3 dots next to the app, you can now install it in your environment via the **Install** item.

![](images/apps/Upgrade%20App/en/install_upgrade.png)

##### Installing via Administration Shell
If you want to install via the Administration Shell (this has the advantage that you can install on several tenants at once), you must use the **Install-NAVApp** command. When doing so, you should specify the **Tenant ID**. In the following example, we install the apps in two tenants.

To install the Connector 365 Upgrade App, use the following command:

**Example:**

```Install-NAVApp -ServerInstance YourBusinessCentralInstance -Name "Connector Upgrade" -Tenant Tenant1, Tenant2```
