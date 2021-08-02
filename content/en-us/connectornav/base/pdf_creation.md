---
title: "The PDF creation"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---

### The PDF creation

With Connector NAV Basis you have the possibility to create and manage simple PDF documents directly in Dynamics NAV.
The creation of PDF files from Dynamics NAV is possible from any page, in the following an offer is used as an example.

![](/images/connectornav/base/pdf_erzeugung.png)<center>_Extract sample offer Connector NAV Integration_</center>

|Actions | |
|---|---|
| PDF        | This action creates the PDF.                                                                                     |
| Status     | This action leads you to the job list and to the corresponding entry.                                            |
| History    | In addition to the *Status* action, job entries that have been assigned to the document are also displayed here. |
| PdfPreview | This action allows you to view the document temporarily in PDF format.                                           |

#### The dialog in PDF mode

![](/images/connectornav/base/dialog_modus_pdf.png)<center>_Dialog Mode PDF Register General_</center>

|Field describtion | |
|---|---|
| Lot. No.        | Unique job number, assigned by the Connector NAV.                             |
| UserID          | Current login.                                                                |
| Report name     | The report name assigned to each report.  (from the interface transfer)       |
| Document number | Document number of the document.  (from the interface transfer)               |
| Name            | Contact name.  (from the interface transfer)                                  |
| File type       | File type. (from the interface transfer)                                      |
| Job mode        | Job mode of the job. (from the interface transfer)                            |
| Shipping via       | Not used in PDF mode.                                                                                        |
| Protocol print     | According to setup or user setup preset, mark the job for protocol printing.                                 |
| With signature     | According to setup or user report preset, marks the operation to sign it later.  **(SIGN modul required!)**  |
| Server processing  | Indicates whether the job is a server job. (from the interface transfer)                                     |
| Clearance          | Indicates wether the jon is clear. (Always set to YES for non-server jobs)                                   |
| Date/time deafult  | If it is a server job, the operation can be executed with a date and time specification.                     |