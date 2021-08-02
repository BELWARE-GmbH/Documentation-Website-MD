---
title: "Destination address selection"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---

#### Destination address selection
![](/images/connectornav/benreport_einr_epost_ausw_zieladressen.png)<center>_Connector NAV selection destination adress_</center>

Via the selection of the target addresses, it can be set independently per job mode which document goes to which recipient. Individual standard adjustments can also be taken into consideration.<br />The illustration above shows an example of the setup of the target addresses for invoices, credit notes and quotations. In plain text, the setup specifies that emails for invoices go to the "Invoice to contact no." field and the destination address is in the "Email" field.<br />Advanced knowledge of object numbers and affiliations between objects is required for the setup.

|Field description | |
|---|---|
|Job mode         | Selection of the job mode.                                                                                                                             |
|ReportID         | Selection of the report, in the picture above it is the standard reports. The report ID can be determined through the Dynamics NAV report selection.   |
|Report name      | Calculated field, show the report name.                                                                                                                |
|SpreadsheetID    | ID of the spreadsheet the report refers to. This information is important to allow selection of the fields.                                            |
|Spreadsheet name | Calculated field, displays the spreadsheet name.                                                                                                       |
|Target from field no.         | Selection of the field of the target.                                 |
|Target from field name        | Calculated field, displays the field name.                            |
|Target adress from field no.  | Selection of the target adress, based on Contact, Creditor or Debtor. |
|Target adress from field name | Calculated field, displays the field name.                            |