---
title: "Configuration"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

### Configuration

#### The Connector NAV Configuration

##### Configurationsetup

![](/images/connectornav/konfiguration_connectornav.png)<center>_Connector NAV configuration, actions_</center>

Before you start setting up the Connector NAV, your individual configuration data is loaded. To do this, press the **Configuration setting** action at the beginning. The configuration provides information about your acquired modules.

##### Register Codeunit

![](/images/connectornav/register_codeunit.png)<center>_Connector NAV configuration, Register Codeunit_</center>

|Field describtion|  |
|---|---|
|Fax-, Mail-, SMS-, PDF-, CTI-, IncaMail-, Archiv Codeunit | For each acquired module, the corresponding object number of the code unit was entered.|

##### Register Page

![](/images/connectornav/register_page.png)<center>_Connector NAV configuration, Register Page_</center>

|Field describtion|  |
|---|---|
|Dialog Page | This is the object number for the dialog page.|
|Dialog Page E-POST | This is the object number for the dialog page E-POST. |

##### Register interface

![](/images/connectornav/register_schnittstelle.png)<center>_Connector NAV configuration, register interface_</center>

|Field describtion|  |
|---|---|
|Interface | These fields provide information about which interface is used to open the fax or mail function. Available interfaces:|
|Mail interface | Twinfax, OfficeMaster, TOBIT, C3000, SMTP, Outlook |
|Fax interface | Twinfax, OfficeMaster, Faxmaker, TOBIT, C3000 |
|SMS interface | Twinfax, OfficeMaster |
|SMS Domain part | About this functionality faxes are sent via SMTP. <br /> Prerequisite is a SMTP2Fax capable fax product. |

##### Register configuration

![](/images/connectornav/register_konfiguration.png)<center>_Connector NAV configuration, register configuration_</center>

|Field describtion|  |
|---|---|
|Fax-, Mail-, SMS-, PdfPaper Client-, PdfPaper Server-, CTI-, IncaMail-, E-POST Granule | Provide information about the aquired moduls |
|User | Provides information about the number of licenced users |