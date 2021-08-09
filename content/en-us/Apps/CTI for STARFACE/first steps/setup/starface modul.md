---
title: "STARFACE Module"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Setup

### Setting up the STARFACE module
In order for the communication between Microsoft Dynamics 365 Business Central and the STARFACE telephone system to work, a setup must take place here as well. For this you need a module which you can download on this page.

<p style="text-align: center;">
Download here
</p>

[<img src="/images/apps/ctidownload.jpg">](files/CTI_Module.zip)

After you have added the module via the admin portal, it still has to be configured. You can access the configuration via the pencil icon.

![](images/apps/cticonfigstarfaceen.png)

Under the Setup tab, you must now first authenticate the module via a user. To do this, you must specify the **username**, the **web access key** and the **web service URL**.

After these parameters are added, you can add more users to the module. After the module has been authenticated once, the **STARFACE Login ID** and **username** from Business Central will suffice here.

Repeat this process until all users have been added to the module.

![](images/apps/ctimodulesetupen.png)

The name of the Microsoft Dynamics 365 Business Central users as well as the respective web key can be found, in Microsoft Dynamics 365 Business Central under **"Users"** in the respective **"User card"**. The web service URL can be found in Business Central under **"Web Services", OData V4 URL**.

![](images/apps/ctiodataen.PNG)
![](images/apps/ctiusersetupen.PNG)