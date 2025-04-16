---
title: "User report setup"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

#### The Connector NAV User report setup
Using the User Report Setup you can set more individual preferences per user, report and language. A setting in the user report setup has **higher priority** than the Connector NAV user setup (e.g. email sender).

##### Actions
![](/images/connectornav/benreport_einr_aktionen.png)<center>_Connector NAV user report setup, actions_</center>

|Actions describtion| |
|---|---|
|Bodytext/SMS Bodytext<br />Attached file 1 - 4 | These actions can be used to display the intended document.|
|Client/Server stationery<br />Printing process stationery<br />Client/Server | The stationery can be displayed via these actions. (Only visible for the pdfPaper module)|
|Attach files | Standard attachments can be added via this action per job mode, depending on the module.|

After the action is performed, the document opens. There is a message (whether the temp folder should be deleted).

![](/images/connectornav/benreport_einr_aktionen2.png)<center>_Connector NAV user report setup, action Display_</center>

This deletes all downloaded documents located in the local temp directory under %appdata%. Before confirming with Yes, the document must be closed again, otherwise an error message will be displayed. If you don't want this query, you can disable the window in the Connector NAV setup via the function "Clean Temp Folder".

#### Register general
![](/images/connectornav/benreport_einr_reg_allgemein.png)<center>_Connector NAV user report setup, register general_</center>

|Field describtion | |
|---|---|
|User          | The respective user is selected here. If the field is left empty, this setting is used for each user.|
|Language      | The language code used for the document is recorded here.                                            |
|ReportID      | The intended report ID. e.g. report 204 for sales quotation.                                         |
|Report name   | Depending on the report ID, the report name is displayed here.                                       |
|Subject       | An individual subject can be entered here. In addition, the **document number %1** can be used as a placeholder.|
|E-mail sender | Here a specific e-mail address can be entered, which overwrites the e-mail address from the user setup.<br />This setting is not controllable via the Outlook e-mail interface, since the default Outlook account opens at the workstation when sending.|
|Bodytext file | The file name for the body text is selected here. This will be uploaded to the server under com_tmp. If the file already exists, it will be overwritten.|
|SMS Bodytext file| Here the file name for the SMS body text is selected. This will be uploaded to the server under com_tmp. If the file already exists, it will be overwritten.|
|Default files atteched 1 – 4 | Here 1 - 4 attachment files can be preset for the user. This is uploaded to the server under com_tmp. If the file already exists, it is overwritten.<br />**The four attachments will be removed in one of the next updates and replaced by the attachment lines (see below).|
|Additional output folder | In addition to the **Original document** (storage in com_out), a storage folder can be entered here, in which a copy is stored.<br />An example scenario is the transfer of the documents into a DMS system, which are expected at a certain place.<br />Here the placeholder %9 is available, which replaces the mandate in the path. It is important that the folder structure according to the specified path already exists. Since the path is not automatically generated.|
|File name | An individual file name for the original document can be entered here. This entry overwrites the setting "File name is voucher number" from the Connector NAV setup. In addition to the "Free text" placeholders are available:<br />%1 Document number<br />%2 Document type<br />%3 Date YYYYMMDD<br />%4 Time HHMMSS<br />%5 Sequence number of the job list<br />%6 Job mode<br />%7 Dispatch via<br />%8 Reference<br />When naming must be absolutely observed that the name is unique. <br />Otherwise, original documents will be overwritten when resending.<br />Not recommended: %2_%1.<br />Recommended: %2_%1_%5.|


#### Register Control
![](/images/connectornav/benreport_einr_reg_steuerung.png)<center>_Connector NAV user report setup, register Control_</center>

|Field describtion | |
|---|---|
|Configured e-mail interface<br />Sending via | The configured e-mail interface displays the purchased e-mail product. Alternatively, you can control the e-mail dispatch via the SMTP interface.|
|Outlook Silent | For the Outlook e-mail interface, you can specify here whether the Outlook dialog should be visible.|
|Qualified signature | This is used for the default setting per report and user. Here you define which mode (with/without signature) the system should suggest when sending faxes/e-mails.|
|HTML Bodytext | Here you can select whether you want to preset HTML body text for this operation.|
|Query report options | Enables the default report options to be opened automatically during the shipping process|
|[Request Page Options](en-us/connectornav/configuration-and-setup/setup/request_page_options/) | Opens the report options for the respective report and allows to set default options which apply to the selected report.<br />The placeholder %1 is mandatory, otherwise shipping is not possible.|
|Request Page Options Print | See above.<br />The options set here apply exclusively to the printing of reports.|
|Document links as attachment | This function can be used to send stored links to a document as an attachment.|
|Server processing | This function can be used to set whether the document should be sent via background processing. This requires a setup in the NAS / task queue item. More details in the related section.|
|Immediate generation | Here you can set whether the document should be generated immediately (client-side) or in the background. We recommend this setting **for unposted as well as registered** documents or for documents that require **user interaction** (e.g. offers follow-up task).<br />The following documents can be generated in the background by default with Connector NAV:<br />- Sales quotation<br />- Sales order<br />- Geb. Sales credit note<br />- Purchase order<br />- Blanket purchase order<br />- Purchase inquiry<br />- Geb. sales delivery<br />- Reg. reminder<br />- Blanket order<br />- Geb. purchase invoice<br />- Geb. purchase delivery<br />- Geb. purchase credit note<br />- Reg. delivery reminder<br />Further integrations require individual programming without instant generation.|
|With clearance | With this option, the processes are not processed by the background process until a clearance is made via the job list.<br />For example, invoice e-mails can be generated and checked before being sent. More details in the documentation Connector NAV Basis.|
|Dialog on/off | Here you can control for which process the dialog should be visible or not. The **Dialog** checkbox is to be selected generally for all processes. If this checkbox is selected, no individual checks will be performed.|

#### Register Attachment lines
![](/images/connectornav/benreport_einr_reg_anh_zeilen.png)<center>_Connector NAV User setup, register Attatchment lines_</center>

The four standard attachment files have been supplemented with N attachments that can be predefined per job mode. These can be added via the action mentioned above. In the tab, the document can be displayed and deleted. In addition, you can determine whether attachments are to be combined with the document into one document and the corresponding attachment is added either at the top or at the bottom.

#### Register pdfPaper
![](/images/connectornav/benreport_einr_reg_pdfpaper.png)<center>_Connector NAV User setup, register pdfPaper_</center>

Only visible for the pdfPaper module. For details on how to set up the pdfPaper module, see the documentation provided.

|Field describtion | |
|---|---|
|Client/Server stationery | A different stationery for the global setup can be stored here (e.g. in case of a different language code).|
|Stationery for the Printout Client/Server operation | Here, a different stationery for the Printout operation can be stored for global setup (e.g. in case of a different language code).|
|Printer for the Printout Client/Server job | A different printer for the Printout job can be stored here for global setup. This printer is used for the "Printout" job mode.|

#### Register IncaMail
![](/images/connectornav/benreport_einr_reg_incamail.png)<center>_Connector NAV user setup, register IncaMail_</center>

Only visible for the IncaMail module.

|Field describtion | |
|---|---|
|Send as IncaMail | Here you can set whether the document should be sent as IncaMail.|

#### Register E-POST
![](/images/connectornav/benreport_einr_reg_epost.png)<center>_Connector NAV user setup, register E-POST_</center>

Only visible for the E-POST module.

|Field describtion | |
|---|---|
|Send as E-POSTLETTER | Here you can set wether the document should be send as E-POST.|
|E-POST with cover sheet<br />E-POST color selection<br />E-POST electronic try| Options, that can be specified for shipping. Depending on the setting, the price per receipt varies.|