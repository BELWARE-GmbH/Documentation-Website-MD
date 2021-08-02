---
title: "Communication matrix"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 5
---

#### Communication matrix
The communication matrix is the special setup of destination addresses. With the overview described above, global destination addresses are determined (e.g. sale to contact, e-mail field). Exceptions can be determined with the communication matrix.

![](/images/connectornav/benreport_einr_epost_komm_matrix.png)<center>_Connector NAV Communication matrix overview_</center>

In the lower part of the map there is an overview of the existing global settings. The exceptions only take effect if there is also a global setting.

|Field describtion | |
|---|---|
|Job mode        | Selection of the job mode.                                                                                                                            |
|ReportID        | Selection of the report, in the picture above it is the standard reports. The report ID can be determined through the Dynamics NAV report selection.  |
|Report name     | Calculated field, displays the report name.                                                                                                           | 
|SpreadsheetID   | Spreadsheed ID of the target. Possible chioce: Contact, Debtor or Creditor.                                                                           |
|Spreadsheet name| Calculated field, display the spreadsheet name.                                                                                                       |
|Customer no.    | The no. of the contact, debtor or creditor is selected here. The selection depends on the entry in the TableID field.                                 |
|Target adress   | The deviating destination address can be entered here.                                                                                                |
|Targetadress 2(cc)<br />Targetadress 3(bcc) | A CC and BCC address can be entered here (only for sending via SMTP or Outlook).                                          |
|PDFA layer      | Here you can specify the level of PDF/A encryption. Selection between none, PDF/A-1b, PDF/A-3b.                                                       |

#### Launching in matrix mode
In the communication matrix you have the possibility to define certain job modes for stacking. This way you are able to send your customer via stacking an e-mail and a fax at the same time.<br />To use this funktion you have to open the communication matrix and define an procedure. Remember to set a checkmark at stacking mode otherwise the input during stacking will be ignored.

![](/images/connectornav/benreport_einr_epost_stapellauf.png)<center>_communication matrix overview, the stacking fields are activated._</center>

In our example the Customer Meller gets via stacking an invioce via e-mail and fax. Now that the process is defined, you can (in this case) change to the attached invioces an execute the stack.

![](/images/connectornav/benreport_einr_epost_stapellauf2.png)<center>_Connector NAV funktions in template attached invioce, button for stack ist marked_</center>

The stack will now be executed as defined in the communication matrix.