---
title: "Individual subject lines"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 10
---
#### Application area
A large number of combinations can result from the various settings for the job mode, the report name and others.
If specific subject lines are required in the generated documents for individual combinations, these can be implemented using this field.
For this purpose, placeholders to be defined by the user are used, which are replaced with assigned values from the database. They are set up as follows:
In the communication matrix there is a column "Subject". In the associated fields, the [...] symbol in the right margin 

![](images/connectornav/matrix/platzhalter_def_1_mm.png)
####

can be used to open up a list for defining own placeholders.

![](images/connectornav/matrix/platzhalter_def_2.png)
####

Here there are the columns "Placeholder" and "Definition". In the fields of the first column, the names of the placeholders can be freely selected.In the fields of the second column, the [...] symbol at the edge of each field 

![](images/connectornav/matrix/platzhalter_def_3_mm.png)
####

can be used to specify elements of the database whose values are to replace the placeholders.
For this purpose, the fields from the company information are available, as well as the information from the header, which is used for the corresponding report. For example, for the standard report **1306: Standard Sales - Invoice**, you have the **Sales Invoice header** available.

![](images/connectornav/matrix/platzhalter_def_4.png)
####

{{< notice info "Technischer Hinweis" >}}
To determine the table for the header data, the report metadata of the respective report is examined for its property: **FirstDataItemTableID**. The standard reports in Business Central store the underlying header for this first element (**FirstDataItemTableId**). Example: **Report 1306 -> Sales Invoice Header**. 
If customized reports have a different structure, i.e. a different table is in the first place, this table is taken over in the table filter, which may result in unusable fields being displayed or important fields being missed. For such cases there is the possibility to set the correct target table via an event subscriber depending on the report id. More about this can be found [here](/en-us/apps/mail-subject-plus/working-with-mail-subject-plus/events).
{{< /notice >}}

<br>
After selecting a database field for a placeholder, confirm the selection at the end of the list by clicking OK.

![](images/connectornav/matrix/platzhalter_def_5.png)
####

The list of assignments between placeholders and database fields must also be confirmed with OK at the end.
![](images/connectornav/matrix/platzhalter_def_6.png)

### Control of the placeholder target table via event

As mentioned above, a placeholder selection may display unusable fields depending on the report design.
With the help of an event you have the possibility to determine yourself the correct target table for the placeholder selection, depending on the report you are using.
The event to use is: **OnBeforeSetRecordFilterForEmailPlaceholders** and is called via the page **5402538 - CON eMail Placeholder**. A corresponding event subscriber could look like the following.
```al
LOCAL [EventSubscriber] OnBeforeSetRecordFilterForEmailPlaceholdersSubscriber(VAR TargetTableNo : Integer;ReportId : Integer)
IF ReportId = 50001 THEN
    TargetTableNo := 112;
```
Here, for an example report 50001, the target table is set to the value 112 (**sales invoice header**).
The next time you select a placeholder for the report 50001, the possible fields from the sales invoice header will be displayed in addition to the fields from company information. 

{{< notice info Hinweis >}}
Care should be taken to use the correct destination table for the particular use.
**Example**: If an invoice report is sent by mail from the posted sales invoices (*Sales Invoice Header*), then a placeholder selection of sales credit memo fields (*Sales Credit Memo Header*) for this report would be incorrect. This could result in errors at runtime, or unexpected resolved placeholders.
{{< /notice >}}