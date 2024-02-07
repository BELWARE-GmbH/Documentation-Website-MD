---
title: "CTI for STARFACE Authentication"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### CTI for STARFACE Authentication

To enable your STARFACE telephone alnage to access Business Central, the STARFACE module must authenticate itself to Business Central with the necessary authorizations.
This is made possible via a Microsoft Entra (formerly Microsoft Azure) application, which is provided centrally by us and provides the necessary authorizations.
All you have to do is give this application your consent.

To set up the Microsoft Entra application, first use the search function of Business Central and open the **Microsoft Entra applications** to open the list of Microsoft Entra applications.
![](images/apps/cti_starface/en/microsoft-entra-applications.png)

There you open the application **Authentication for Connector 365 CTI for STARFACE**.
Here you can also check the authorizations that the application receives in Business Central.
![](images/apps/cti_starface/en/microsoft-entra-application.png)

To complete the setup, execute the action **Grant consent**.
A window for authentication will now open.
Here you must authenticate yourself with an Adminstartor account.

After authentication, you must now set the **Status** to **Enabled**.
This completes the authentication setup.