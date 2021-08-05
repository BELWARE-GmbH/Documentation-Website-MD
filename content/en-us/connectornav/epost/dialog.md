---
title: "The dialog"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

#### The dialog

##### Actions

![](/images/connectornav/epost/dialog_aktionen.png)<center>_Dialog Mode Email, Actions_</center>

|Actions
|---|---|
| View attachments 1-4 | This action allows you to view the selected attachments.                  |
| Add files            | Via this action you can select additional files to be sent as attachments.|
| Show Documents       | Via this action you can view the added documents as a list.               |

##### Register General

![](/images/connectornav/epost/reg_allgemein.png)<center>_Dialog Mode E-POST, Register General_</center>

|field description |
|---|---|
| Job No.         | Unique job number, assigned by the Connector NAV.  |
| UserID          | Current login |
| Report Name     | The report name assigned to the report.  (from the interface transfer) |
| Document Number | Document number of the document. (from the interface transfer) |
| file type       | file type of the document.  (from the interface transfer) |
| Job mode        | Job mode of the operation.  (from the interface transfer) |
| Send via        | This field shows the e-mail interface.                    |
| Server Processing | Indicates whether this is a server job. (from the interface transfer) |
| Clearance | Indicates whether the job is released. (always set to YES for non-server jobs) |
| Date/Time specification | If the job is a server job, or if external communication software is in use, the operation can be executed with a date and time specification. (For OfficeMaster, Twinfax, Tobit) |
| Destination address | Recipient's e-mail address |

##### Register E-POST

![](/images/connectornav/epost/reg_epost.png)<center>_Dialog Mode Mail, Register E-POST_</center>

|field description |
|---|---|
| Subject | Subject of the E-POST letter for logging purposes.   |
| Email Sender | Address of the E-POST sender from the interface transfer.    |
| E-POST with cover sheet<br />E-POST color selection<br />E-POST electronic try | options that can be specified for the dispatch. Depending on the setting, the price per document varies, refer to the **Connector NAV Setup and Configuration** documentation. |

##### Contact details tab

![](/images/connectornav/epost/reg_kontaktdaten.png)<center>_Mail Mode dialog, Contact Data tab_</center>.

|field description |
|---|---|
|Contact data | An overview of the contact's address. This is only a display, the data cannot be changed.  |

##### Attachments tab

![](/images/connectornav/epost/reg_anhaenge.png)<center>_Mail Mode Dialog, Attachments tab_</center>

|field description |
|---|---|
|Contact data |Any formats are supported. Automatically populated in conjunction with Connector NAV user report setup. |
