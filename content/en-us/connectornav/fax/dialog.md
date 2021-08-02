---
title: "The dialog"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

#### The dialogue

##### Actions

![](/images/connectornav/fax/dialog_actions.png)
{{<img src="/images/connectornav/fax/dialog_actions2.png" caption="Dialog Mode Email, Actions">}}

|Actions |
|---|---|
| Add files      | This action allows you to select additional files to be sent as attachments. |
| Show Documents | This action displays the added documents as a list.                          |
| Show Attachments 1-4 | Via this action you can view the selected attachments.                 |

##### General tab

![](/images/connectornav/fax/dialog_reg_general.png)
{{<img src="/images/connectornav/fax/dialog_reg_general2.png" caption="Dialog Mode Fax, General tab">}}

|field description |
|---|---|
| Job No. | Unique job number, assigned by Connector NAV |
| UserID | Current login |
| Report Name | the report name assigned to the report (from the interface transfer) |
| Document number | document number of the document (from the interface transfer) |
| Name | Name of the contact (from the interface transfer) |
| File type | File type of the document (from the interface transfer) |
| Job mode | Job mode of the operation (from the interface transfer) |
| Log Print | Preset according to setup or user setup, mark the job for log printing |
| Send via | This field shows the fax interface.                                                                                                                                                                     |
| With Signature | Preset according to setup or user report, marks the job to sign it later **(SIGN module required!)** |
| Server Processing | Indicates if this is a server job. (from the interface transfer) |
| Clearance | Indicates whether the job is released. (For non-server jobs always set to YES) |
| Date/Time specification | If the job is a server job, or if external communication software is in use, the operation can be executed with a date and time specification. (For OfficeMaster, Twinfax, Faxmaker, Tobit) |
| destination address | recipient's e-mail address |

##### Attachments tab

![](/images/connectornav/fax/dialog_reg_anhaenge.png)
![](/images/connectornav/fax/dialog_reg_anhaenge2.png)<center>_Dialog Mode Fax, Attachments tab_</center>

|field description |
|---|---|
| Attachment file 1-4 | Any format is supported. Automatically populated in conjunction with Connector NAV user report setup. |