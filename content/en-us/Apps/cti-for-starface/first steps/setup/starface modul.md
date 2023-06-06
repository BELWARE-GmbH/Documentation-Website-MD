---
title: "STARFACE Module"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Setup
In order for the communication between Microsoft Dynamics 365 Business Central and the STARFACE telephone system to work, it must also be set up accordingly. For this you need a module that you can download further down on this page according to your STARFACE version.

#### Sources of Information
For the setup of the STARFACE software some information is required. Where to find it in Business Central is described here.

The name of the Microsoft Dynamics 365 Business Central users as well as the respective web key can be found, in Microsoft Dynamics 365 Business Central under **"Users"** in the respective **"User card"**. The web service URL can be found in Business Central under **"Web Services", OData V4 URL**.

![](images/apps/ctiodataen.PNG)
![](images/apps/ctiusersetupen.PNG)

### Setting up the STARFACE module starting from version 7.x.

<p style="text-align: center;">
Download here
</p>

[<img src="/images/apps/ctidownload.jpg">](files/CTI_Module_7.zip)

After you have added the module via the admin portal, it still has to be configured. You can access the configuration via the pencil icon.

![](images/apps/cticonfigstarfaceen.png)

Switch to the Setup tab and start creating the CTI users in the module. For this you need the **STARFACE Login ID** and the corresponding **User name** from Business Central.

Additionally you have to fill in the following fields with information:

- Business Central Saas
- Azure Tenant ID
- Web Service User
- Web Access Key/Password

![](images/apps/ctimodulesetup7.jpg)

### Setting up the STARFACE module for version 6.x.

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










### Einrichtung
Damit die Kommunikation zwischen Microsoft Dynamics 365 Business Central und der STARFACE Telefonanlage funktioniert, muss auch hier eine Einrichtung stattfinden. Dazu benötigen Sie ein Modul welches Sie auf dieser Seite downloaden können.

#### Informationsquellen
Den Namen der Microsoft Dynamics 365 Business Central Benutzer sowie den jeweiligen Webschlüssel finden Sie, in Microsoft Dynamics 365 Business Central unter **"Benutzer"** in der jeweiligen **"Benutzerkarte"**. Die Webdienst-URL finden Sie in Business Central unter **"Webdienste", OData V4-URL**.

![](images/apps/ctiodatade.PNG)
![](images/apps/ctiusersetupde.PNG)

### Einrichten des STARFACE Moduls ab Version 7.x.

<p style="text-align: center;">
Hier Downloaden
</p>

[<img src="/images/apps/ctidownload.jpg">](files/CTI_Module_7.zip)

Nachdem Sie das Modul über das Adminportal hinzugefügt haben, muss dieses noch konfiguriert werden. Über das Stift-Symbol gelangen Sie in die Konfiguration.

![](images/apps/cticonfigstarfacede.png)

Wechseln Sie zum Reiter Einrichtung und starten damit, die CTI-Nutzer im Modul anzulegen. Dazu benötigen Sie die **STARFACE Login ID** und den dazugehörigen **Benutzernamen** aus Business Central.

Zusätzlich müssen Sie noch die folgenden Felder mit Informationen füllen:

- Business Central Saas
- Azure Tenant ID
- Web Service User
- Web Access Key/Password

![](images/apps/ctimodulesetup7.jpg)

### Einrichten des STARFACE Moduls für Version 6.x.

<p style="text-align: center;">
Hier Downloaden
</p>

[<img src="/images/apps/ctidownload.jpg">](files/CTI_Module.zip)


Nachdem Sie das Modul über das Adminportal hinzugefügt haben, muss dieses noch konfiguriert werden. Über das Stift-Symbol gelangen Sie in die Konfiguration.

![](images/apps/cticonfigstarfacede.png)

Unter dem Reiter Einrichtung müssen Sie nun zunächst das Modul über einen Nutzer authentifizieren. Dazu müssen Sie den **Nutzernamen**, den **Webschlüssel** und die **Webdienst-URL** angeben.

Nachdem diese Parameter hinzugefügt wurden, können Sie dem Modul weitere Nutzer hinzufügen. Nachdem das Modul einmal authentifiziert wurde, reicht hier die **STARFACE Login ID** und der **Benutzername** aus Business Central.

Wiederholen Sie diesen Prozess, bis dem Modul alle Nutzer hinzugefügt wurden.

![](images/apps/ctimodulesetup.png)