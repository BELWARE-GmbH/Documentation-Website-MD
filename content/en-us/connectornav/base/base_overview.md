---
title: "The Baseoverview"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---

### The Baseoverview

{{<notice info>}}Please note that functions are also described for modules whose license you have not purchased. These should usually be recognizable by the context.{{</notice>}}
##   
#### The Connector NAV Job List Overview

##### Important fields

![](/images/connectornav/base/jobliste_uebersicht.png)<center>_Connector NAV Job List Overview_</center>

The Connector NAV job list overview displays the respective job orders with all required information in tabular form. The figure above shows a small part of the job list overview.

|field describtion | |
|---|---|
| Sequence no.       | Journal number, assigned by the system.                                      |
| Job direction      | Direction of job entry (output/input)                                        |
| Job mode           | Displays the operation type (eMail, Fax, SMS, PDF, Printout, CTI, Document). |
| Shipping via       | Displays the interface of the dispatch.                                      |
| Server processing  | Indicates whether the job is a server job.                                   |
| Repetition         | Indicates whether the job was repeate                                        |
| Files               | Displays the number of documents that have been additionally added as attachments to the operation.  |
| UserID              | Indicates which user the operation is from.                                                          |
| Subject             | E-mail subject.                                                                                      |
| Destination address | Displays the destination address of the operation.                                                   |

##### Important fields for identifying the status

![](/images/connectornav/base/jobliste_uebersicht2.png)<center>_Connector NAV job list overview continued_</center>

Whether a process was successful is usually indicated by a '+' sign in the status value. The following list shows what other statuses can exist for a process.

|field describtion | |
|---|---|
| Acceptance date    | Documents the acceptance date for the job.                    |
| Acceptance times   | Documents the acceptance time for the job.                    |
| Processed at       | Documents when the server job was processed.                  |
| Status feedback    | Indicates whether there is a confirmation for the operation.  |
| Date default   | Specifies the date when the server job should be processed.        |
| Time defaul    | Specifies the time when the server job should be processed.        |
| Status value   | + means: job done - means: job not done correctly                  |
| Processed      | The server job was processed properly.                             |
| Dialog OK      | The dialog has been confirmed                                      |
| Job acceptance | The job was accepted properly.                                     |
| Unlock         | Indicates wether the job was unlocked                              |

The following overview shows in tabular form what status combinations there are and what they mean.

###### Client

| Status | Dialog OK | Job acceptance | Describtion                                                                                                                                                                           |
|--------|-----------|----------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| +      | Yes       | Yes            | Client job was sent successfully.                                                                                                                                             |
| -      | Yes       | Yes            | Client job was not sent. Cause is in the feedback                                                                                                                 |
|        | Yes       | Yes            | Client job was successfully transferred to the communications software. The response from the communications software has not yet been read in. (Not for SMTP, Outlook and SMTP2FAX) |
|        | Yes       | No             | Client job was not terminated properly. The cause is often an error message in NAV.                                                                                    |
|        | No        | No             | Client job was canceled by the user because the dialog was not confirmed.                                                                                                      |

###### Server

| Status | Processed   | Dialog OK | Job acception | Unlock   | Canceled  | Describtion                                                                                                   |
|--------|-------------|-----------|---------------|----------|-----------|----------------------------------------------------------------------------------------------------------------|
| +      | Yes         | Yes       | Yes           | Yes      | No        | Server job was successfully processed and executed.                                                           |
| -      | Yes         | Yes       | Yes           | Yes      | No        | Server job was processed successfully but was not sent. Cause is written in the feedback.                   |
|        | Yes         | Yes       | No            | Yes      | No        | Server job was successfully processed but not yet executed.                                                 |
|        | Yes         | Yes       | No            | No       | No        | Server job was successfully processed but not unlocked.                                                     |
|        | Yes         | Yes       | No            | Yes      | No        | Server job was successfully processed but canceled.                                                          |
|        | Yes         | No        | No            | Yes      | No        | Server job was processed properly but interrupted by the user because the dialog was not confirmed.                       |
|        | No          | No        | No            | No       | No        | Server job was not terminated properly. Cause is often an error massage in NAV.                             |

##### Module specific fields

**E-POST**

![](/images/connectornav/base/epost.png)

|field describtion | |
|---|---|
| E-POST Letter                 | A check mark here indicates that the job is an E-POST job.                                       |
| E-POST Letter New             | A check mark here indicates that the new E-POST API was used here.                               |
| E-POST API Letter ID          | Here is the ID which was assigned to the letter by Deutsche Post.                                |
| E-POST with cover sheet       | The check mark indicates that the letter was sent with a cover sheet.                            |
| E-POST Color selection        | Indicates the color of the letter. B&W = Black & White Color = Color                             |
| E-POST send electronically    | Determines whether an E-POST letter should first be sent electronically before regular dispatch. |

**XRechnung**

![](/images/connectornav/base/xrechnung.png)

|field describtion | |
|---|---|
| XRechnung                    | A check mark here indicates that the job contains an 
| Route-ID                 | The Route-ID of the recipient of the XRechnung.                 |
| XRechnung PDF as attachment  | Indicates how the bill PDF is attached to the case.         |

##### Actions

![](/images/connectornav/base/aktionen.png)<center>_Connector NAV job list overview, actions_</center>

|Action description | |
|---|---|
| Show job file                                        | This action can be used to display the generated document.                                                                                                                                                                                                            |
|  Show body text file                                 | Via this action the used body text can be displayed.                                                                                                                                                                                                           |
|  Show files                                          | This action opens an overview with the additionally added attachments.                                                                                                                                                                                                         |
|  Show attachment file 1-4                            | This action allows you to view the attachment files (if existing).                                                                                                                                                                                                                    |
| Reactivation with dialog Reactivation without dialog | Any number of marked operations can be executed again by means of reactivation with or without dialog. These receive a new job entry and are marked as repeated. This function cannot be used in combination with the **Delete created documents** function. |
| Open related document                                | This action takes you to the corresponding card of the document. (e.g. offer card, bid sales invoice card).                                                                                                                                                                             |
| Assign job                                           | With this action a job can be assigned to a document. (e.g. an offer, a bid, a sales invoice).                                                                                                                                                                                 |
| Show password                                        | By means of this action, if set, it is possible to display the password of the PDF for the respective operation. However, this is not possible for every user. (see User settings) Only visible for the pdfPaper module.                                                                    |
| IncaMail Status    | Using this action, you can check the status of the IncaMail sent.                                                                                                                                      |
| Edit entry         | Server jobs that have not yet been processed or canceled can be processed using this action.                                                                                                   |
| Give clearance     | Server jobs that require a clearance (setting in the user report setup) can be cleared by means of this action. Multiple jobs can also be cleared by selecting them several times. |
| Cancel             | Server jobs that have not yet been processed can be canceled using this action.                                                                                                                   |

#### The Connector NAV Files Overview

With the Connector NAV it is now possible to attach external documents to an e-mail in addition to the four attachments. For more details, see the separate documentation for the Email module.

![](/images/connectornav/base/dateien_uebersicht.png)<center>_Connector NAV files overview_</center>

On request, the Connector NAV files can also be added automatically.
Example scenario: A customer has additional PDF documents for certain items. When sending an offer, Connector NAV searches for the corresponding document for the offer lines via an external function and adds these to the e-mail as an attachment.

#### The Connector NAV Feedback Overview

![](/images/connectornav/base/rueckmeldung_uebersicht.png)<center>_The Connector NAV Feedback Overview_</center>

The Connector NAV feedback overview displays the feedback received for each of the job orders issued in tabular form, together with the status information.

|Field description of the most important fields | |
|---|---|
| Job Reference          | Indicates to which job entry the feedback belongs.                         |
| Feedback date/time     | Navision Job Number.                                                       |
| FUNKTION               | SENDACK = Feedback file.                                                   |
| USERINFO               | User.                                                                      |
| SERVICE                | FX3 = Fax Job / SMTP = E-Mail Job.                                         |
| SENDTIME               | IMMEDIATE = Immediate shipping or default shipping time jj-mm-tt-hh:mm.    |
| STATUS                 | + successful operation / - error during operation.                         |
| ERROR                  | Status message as text.                                                    |
| SUBADDR                | The extension number is displayed for incoming faxes.                      |
| Read                   | Currently this field has no function and is a remnant of an old requirement. |
| Filelist               | Path and document name. (Document)                                         |
| Filelist 2             | Path and document name. (Bodytext)                                         |
| Filelist 3             | Path and document name. (Attachment)                                       |
| Filelist 4 | Path and document name. (Attachment 2)                |
| Filelist 5 | Path and document name. (Attachment 3)                |
| Filelist 6 | Path and document name. (Attachemnt 4)                |
| Document   | Document from filelist as BLOB in the database.   |
| Document 2 | Document from filelist 2 as BLOB in the database. |
| Document 3 | Document from filelist 3 as BLOB in the database. |
| Document 4 | Document from filelist 4 as BLOB in the database. |
| Document 5 | Document from filelist 5 as BLOB in the database. |
| Document 6 | Document from filelist 6 as BLOB in the database. |

Numerous other fields are displayed or are available in the background. All fields from the confirmation files are read in and are thus available for further processing in Microsoft Dynamics NAV.<br />The most essential information is however the **Statusinformation**, i.e. whether the order could also be successfully executed. The confirmation card offers the possibility the documents from the data base and/or due to the FILELIST data to indicate. It is also possible to import/delete the documents afterwards. A further useful feature is the reactivation from the feedback map.<br /> Advantage of the data base storage is that the data can be indicated always, an access to the path mentioned is not necessary in contrast to the variant without data base storage. In both cases there is quasi an archive of the documents from the job list.

#### The Connector NAV feedback card

##### Register General

![](/images/connectornav/base/rueckmeldung_karte_allgemein.png)<center>_Connector NAV feedback card, Register General_</center>

##### Register files

![](/images/connectornav/base/rueckmeldung_karte_dateien.png)<center>_Connector NAV feedback card, Register files_</center>

##### Register feedback

![](/images/connectornav/base/rueckmeldung_karte_rueckmeldung.png)<center>_Connector NAV feedback card, Register feedback_</center>

The confirmation card provides a detailed overview of each confirmation of an operation. For e-mail and fax interfaces with a confirmation (OfficeMaster, Twinfax, Faxmaker), the Confirmation tab reads and displays this file.

##### Actions in the feedback card

###### Show filelists

![](/images/connectornav/base/rueckmeldung_karte_aktionen_filelist.png)<center>_Connector NAV feedback card, actions_</center>

Using the filelist functions, you can display the job file (FILELIST), body text file (FILELIST 2) or attachments 1-4 (FILELIST 3-6) for each response.

##### Document

![](/images/connectornav/base/rueckmeldung_karte_aktionen_dokument.png)<center>_Connector NAV feedback card, actions_</center>

Using the document functions you can import, export or delete the above mentioned files.

#### The Connector NAV feedback instant overview

![](/images/connectornav/base/rueckmeldung_sofortuebersicht.png)<center>_Connector NAV feedback card_</center>

This manual request makes it possible to confirm the previous feedbacks. The field **Read** can be set to "Yes" by setting a check mark (= click), only records with the value Read = No will be displayed.

This form can also be requested automatically at appropriate points to force a confirmation, this workflow is used to make it mandatory to verify correct dispatch.

#### The Connector NAV Statistics

![](/images/connectornav/base/statistik.png)<center>_Connector NAV Statistics_</center>

|field describtion | |
|---|---|
| CTI entries, on-off             | Visual view of CTI operations.        |
| E-mail entries, outgoing        | Visual view of e-mail operations.     |
| Fax entries, incoming           | Visual view of fax operations.        |
| PDF entries, inbound            | Visual view of PDF operations.        |
| SMS entries, on-off             | Visual view of SMS operations.        |
| All entries, on-off             | Visual view of all operations.        |

|Filter | |
|---|---|
| Date filter   | When entered, only the entries of the specific day are displayed.                                                                           |
| Time filter   | When entered, only the entries of the specific time are displayed. Possible also a time span, e.g. between 20.00 o'clock and 22.00 o'clock. |
| User filter   | When entered, only the entries of the respective user are displayed.                                                                        |
| Document type | If selected, only the entries of the respective document type are displayed.                                                                |