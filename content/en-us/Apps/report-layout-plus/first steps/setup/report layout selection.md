---
title: "Report Layout Selection"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Setup

### Report Layout Selection

You can reach the setup of different report layouts through the particular report selection. Currently the following report selections are supported:
- Sales
- Purchase
- Reminder/Finance Charge

After reaching the report selection you will find the field **Report Layout Selection** in the lines.

![](images/apps/Report_Layout_Plus/en-us/app_report_selection.png)

The number there, shows how many different report layouts are setup for the specific report ID. By clicking the number you reach the **Report Layout Selection**.
There you can find the different set up report layouts, if existing.

![](images/apps/Report_Layout_Plus/en-us/app_report-layout_selection.png)

At the first level you can set up different report layouts per language code. Like the standard of Business Central you can indidually set up report layouts for the email body as well as the email attachment.
At the second level using the register **Field Selection** you can add additional conditions that have to be met. Depending on the values within the fields of the document header different report layouts can be selected.
By clicking the field **Field Description** you can reach the selection of the fields from the document header and you can select one for your condition.

![](images/apps/Report_Layout_Plus/en-us/app_field_selection_lookup.png)

Using the field **Fieldvalue** you can reach the selection with the avaiable values of the previously selected field. This overview includes all values of the specific document header. You can choose one vlaue or enter a custom value. Additionally, it is possible to enter a filter expression as you are accustomed to from Business Central.

The field **Layout Code** allows you to select the desired layout.
Now you can add as many additional conditions as you like. These will be considered in descending order. For instance if the condition of line 1 is met, then all following lines will no longer be considered.
Using the field **Operator** you can combine conditions of adjacent lines. In order to do this you have to select the operator **AND**. In the process always the report layout of the last AND line will be used.

![](images/apps/Report_Layout_Plus/en-us/app_field_value_lookup.png)

#
{{< notice info "Hinweis" >}}
 Independent of this setup, the selected report layout within the document layout of the customer and the specific usage will always have the highest priority._
{{< /notice >}}
#
As soon as you set up the report layout selection, the setting will be used for the sening of emails as well as printing of reports. An example can be found in the area **Working with Report Layout Plus** under [Override Report Layouts](en-us/apps/report-layout-plus/working-with-rlp/override-report-layout/)