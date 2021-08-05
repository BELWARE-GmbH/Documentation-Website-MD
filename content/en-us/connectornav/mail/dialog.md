---
title: "The dialog"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---

#### The dialog

##### Actions

![](/images/connectornav/mail/dialog_aktionen.png)<center>Dialog modus E-mail, actions</center>

|Actions | |
|---|---|
| Edit body text       | This action can be used to edit the body text from the interface transfer. |
| Change body text     | Via this action you can select another body text.                          |
| Add Files            | Use this action to select additional files to be sent as attachments.      |
| Show Documents       | Use this action to display the added documents as a list.                  |
| Show Attachments 1-4 | Via this action you can view the selected attachments.                     |

##### Special feature of the Edit body text action

After activating the action, the body text is downloaded and opened on the local workstation. This is followed by a message asking whether the body text should be uploaded. If changes have been made to the body text, the document must be closed and then the message confirmed with **Yes**. The changed body text will be uploaded and replaced.

![](/images/connectornav/mail/dialog_bodytext.png)<center>Edit Body Text Action (Editor)</center> dialog.

Steps to execute:

1\. Press Edit body text action.  
2\. Modify the body text as desired.  
3\. Save and close the document.  
4\. Confirm the message with Yes.

{{<notice info>}}You can also use Word to create and edit your body texts. This gives you more design options than the editor. For more information, see the HTML Documents with Word documentation.{{</notice>}}

![](/images/connectornav/mail/dialog_bodytext2.png)<center>Edit body text action dialog (Word)</center>.

##### Register General

![](/images/connectornav/mail/reg_allgemein.png)<center>Mode Mail dialog, General tab</center>

|field description |
|---|---|
| Lot No.          | Unique job number, assigned by the Connector NAV. |
| UserID           | Current login. |
| Report Name      | The report name assigned to the report.  (from the interface transfer) |
| Document number  | Document number of the document. (from the interface transfer) |
| Name             | Name of the contact.  (from the interface transfer) |
| File type        | File type of the document.  (from the interface transfer) |
| Job mode         | Job mode of the operation.  (from the interface transfer) |
| Send via         | This field shows the e-mail interface. |
| Log Print        | According to Setup or User Setup preset, mark the job for log printing. |
| With signature   | Indicates whether the job is done with signature.  **(SIGN module required!)** |
| Server processing| Indicates whether the job is a server job. (from the interface transfer) |
| Clearance        | Indicates whether the job is released. (For non-server jobs always set to YES) |
| Date/Time specification | If the job is a server job, or if external communication software is in use, the operation can be executed with a date and time specification. (For OfficeMaster, Twinfax, Tobit) |
| Target address   | e-mail address of the recipient. Click [...] to access the contact list. |

##### Register E-Mail

![](/images/connectornav/mail/reg_email.png)<center>Mail mode dialog, E-Mail tab</center>

|field description |
|---|---|
| Email Sender | This is automatically filled from the interface transfer. Can be modified, exception for the Outlook interface. The sender depends on the default account of the workstation.  |
| EmailCC | Mail address of the second recipient.                                                                                                                                                                 |
| Subject | Default document type + document number as default, alternatively can be predefined individually via the user report setup.  |
| Bodytext file | Link to the file that represents the body text for the respective email.                                                      |

##### Register Target(s)

![](/images/connectornav/mail/reg_targets.png)<center>Mail mode dialog, Register Target(s)</center>

|field description |
|---|---|
| Target address | Here you can specify an unlimited number of target addresses among each other.     |
| Cc | If checked here, the address will appear in the Cc field.           |
| Bcc | If checked here, the address will not appear on the e-mail. |

**Communication Matrix**

![](/images/connectornav/mail/komm_matrix.png)<center>Connector NAV Administration, Communication Matrix</center>.

Within the communication matrix, N destination addresses, the Cc field and the Bcc field are also available. There, addresses can be permanently stored per contact.

**User report setup:**

In the user report setup, you also have the option to specify a BCC email address per report that will also receive the report as an email.

![](/images/connectornav/mail/ben_bericht.png)<center>Connector NAV Administration, User Report Setup</center>.

##### Attachments tab

![](/images/connectornav/mail/reg_anhaenge.png)<center>Mail mode dialog, Attachments tab</center>.

|field description |
|---|---|
| Show File | Use this function to display previously attached attachments. |
| Add Files | This button opens the explorer where you can select your attachments (multiple selection is possible)       |
| Attach Document | Determines if the attachments will be sent. Uncheck the box if you don't want to send a specific file |
| Attach document top/bottom | (requires the pdfPaper module) Allows attachments to be attached directly to the document, either before or after the document. |