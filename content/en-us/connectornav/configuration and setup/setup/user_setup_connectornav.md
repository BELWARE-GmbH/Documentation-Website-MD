---
title: "User setup"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### The Connector NAV User setup

For the use of the Connector NAV, an entry is created here for each user.

##### Register general
![](/images/connectornav/benutzer_einr_reg_allgemein.png)<center>_Connector NAV user setup, register general_</center>

|Field describtion | |
|---|---|
|UserID        | Here, the NAV standard table User Setup is referenced.|
|Extern UserID | An external user ID can be entered here.|
|E-mail        | This e-mail address is used when sending e-mails using the Connector NAV.<br />For IncaMail, the e-mail of the IncaMail account is entered.|
|Work group    | If the document inbox is used, a workgroup can be created here. For more details, see the Connector NAV Basis documentation.|
|Source path   | A different source path (Connector NAV setup) can be stored here.|
|Printer       | A different printer (Connector NAV setup) can be specified here.|
|Protocol printer | A log printer is assigned to the user here.|
|Protocol print   | Iif here a hook is set, then for this user the log pressure is activated. After receipt of the feedback a protocol for the respective job is then printed out.<br />(for this the appropriate function call is to be used).|
|Instant report   | Checking this box activates the immediate message mode, i.e. it is mandatory for the user to mark the feedback of the respective job as read.|
|Path locked      | Status information about the IS_LOCK.TXT file in the print path. If this is present, no job is executed! This state can only occur if an action is not completely executed.|
|Job list global | In general, the job list is displayed per company, a check in this check box causes the respective user to see the Global Job List.|
|Program path for body text | Here you can enter a path for an editor with which the body text is to be opened in edit mode. Otherwise the default program of the operating system will open. This setting has higher priority than the setting from the Connector NAV setup. The following paths can be resolved:<br />%PROGRAMDATA%<br />%ROGRAMFILES%<br />%PROGRAMFILES(x86)%<br />%WINDIR%|
|Header | The header of the respective user is entered here.|
|Sender CSID | Here the default sender CSID per user is entered, at \<leer\> the setup data is accessed.|
|Fax Notification Address | The fax notification address is entered here.
|SMS Notification Address | The SMS notification address is entered here.
|CTI | Here you can specify whether the user uses CTI. (Only in connection with the CTI module).|

##### Register IncaMail
![](/images/connectornav/benutzer_einr_reg_incamail.png)<center>_Connector NAV user setup, register IncaMail_</center>

Only visible for the IncaMail module.

|Field describtion | |
|---|---|
|IncaMail Password | The password of the IncaMail account is entered here. This is not stored as plain text, but encrypted.|

##### Register pdfPaper
![](/images/connectornav/benutzer_einr_reg_incamail.png)<center>_Connector NAV user setup, register pdfPaper_</center>

Only visible for the pdfPaper module.

|Field describtion | |
|---|---|
|Show PDF password | Only the user who has a check mark in this check box can display the assigned passwords in the job list|

##### Register E-POST
![](/images/connectornav/benutzer_einr_reg_epost.png)<center>_Connector NAV user setup, register E-POST_</center>

Only visible for the E-POST module.

|Field describtion | |
|---|---|
|E-POST Username | Username of the E-POST account.|
|E-POST Password | Password of the E-POST account.|

##### Register Place holder
![](/images/connectornav/benutzer_einr_reg_platzhalter.png)<center>_Connector NAV User setup, register place holder_</center>

The following place holders can be used as the e-mail bodytext.

|Field describtion | |
|---|---|
|First name | Place holder %2|
|Last name | Place holder %3|
|Function | Place holder %4|
|Telefone | Place holder %5|
|Fax | Place holder %6|
|E-mail | Place holder %7|

|Other place holders avaiable| |
|---|---|
|Document number | Place holder %8|
|Company data name | Place holder %9|
|Company data name 2 | Place holder %10|
|Company data address | Place holder %11|
|Company data address 2 | Place holder %12|
|Company data postal code | Place holder %13|
|Company data location | Place holder %14|
|Today / date | Place holder %15|
|Time / time | Platzhalter %16|

**An example for the use of place holders**

Placeholder %1 is the salutation, this can be customized using a function call.
\[SetSalutation\(Salutation: Text\[250\]\]
Additional placeholders %17, %18, %19, %21 can be customized using the function call.
\[SetNewLines: Text\[250\]\]

%1,

enclosed you will receive our order confirmation %8.

If you have any further questions, please do not hesitate to contact us.
With kind regards

%2 %3
%4
%9
%11
%13 %14
\----------------------------------
Phone: %5
Fax: %6
E-mail: %7

**Defining your own placeholders**
In the **CON FaxMailDialogHook** code unit, you can create any number of additional placeholders by creating an **Event Subscriber** for the **OnReplacePlaceholder** function from the **CON Base** code unit. The placeholders %101 - %199 are available for this purpose.

To replace the placeholders with the intended text, you must open the **ReplaceText** function from the **CON Base** code unit. The first parameter contains the source text to pass to the event, the second contains the placeholder to replace and the third contains the text to replace the placeholder.

In the example below, the placeholder %36 is replaced by the name of the sales person assigned to this document, if the document is an order confirmation.
![](/images/connectornav/benutzer_einr_platzhalter_bsp.png)

**Printer selection per user**
In the user setup you have the possibility to assign an individual printer to each user created in the system. This allows you, for example, to assign one printer per department to the respective users.
![](/images/connectornav/benutzer_einr_druckerwahl.png)<center>_Overview of the user setup, Printer field is marked._</center>

In order to define an individual printer, only a printer must be stored in the field "Printer" for the respective user.
Since there are several possibilities to define a printer in the Connector NAV, the printers have the following priority:
1. printer from the user report setup
2. printer from the user setup
3. if the pdfPaper module is available, the printer setup there.