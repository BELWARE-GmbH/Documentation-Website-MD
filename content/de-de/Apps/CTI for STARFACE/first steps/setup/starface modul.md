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
Damit die Kommunikation zwischen Microsoft Dynamics 365 Business Central und der STARFACE Telefonanlage funktioniert, muss auch hier eine Einrichtung stattfinden. Dazu benötigen Sie ein Modul welches Sie auf [hier](files/CTI_Module.zip) downloaden können.

Nachdem Sie das Modul über das Adminportal hinzugefügt haben, muss dieses noch konfiguriert werden. Über das Stift-Symbol gelangen Sie in die Konfiguration.

![](images/apps/cticonfigstarfacede.png)

Unter dem Reiter Einrichtung müssen Sie nun die Nutzer anhand der Starface Login-ID einrichten.

![](images/apps/ctimodulesetupde.png)

Den Namen der Microsoft Dynamics 365 Business Central Benutzer sowie den jeweiligen Webschlüssel finden Sie, in Microsoft Dynamics 365 Business Central unter **"Benutzer"** in der jeweiligen **"Benutzerkarte"**. Die Webdienst-URL finden Sie in Business Central unter **"Webdienste", OData V4-URL** (Siehe [Webdienste](de-de/apps/cti-for-starface/first-steps/setup/web-services/)).

![](images/apps/ctiusersetupde.PNG)