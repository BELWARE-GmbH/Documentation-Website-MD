---
title: "STARFACE Modul"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Einrichtung

### Einrichten des STARFACE Moduls
Damit die Kommunikation zwischen Microsoft Dynamics 365 Business Central und der STARFACE Telefonanlage funktioniert, muss auch hier eine Einrichtung stattfinden. Dazu benötigen Sie ein Modul welches Sie auf dieser Seite downloaden können.

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

Den Namen der Microsoft Dynamics 365 Business Central Benutzer sowie den jeweiligen Webschlüssel finden Sie, in Microsoft Dynamics 365 Business Central unter **"Benutzer"** in der jeweiligen **"Benutzerkarte"**. Die Webdienst-URL finden Sie in Business Central unter **"Webdienste", OData V4-URL**.

![](images/apps/ctiodatade.PNG)
![](images/apps/ctiusersetupde.PNG)