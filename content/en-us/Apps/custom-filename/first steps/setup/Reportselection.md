---
title: "Report Selections"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Setup

### Report selection

Use the search function to open the desired report selection - e.g. the one for sales. Now select the desired report. For our example, we will use Invoices, but basically reports are supported from the areas:
- Sales
- Purchasing
- Service
- Reminder
- stock on hand
- Production order
- Bank account

![](/images/apps/custom-filename/de/report-selection-intro.png)

In the report selection you will find the **"File name "** field, which indicates how many individual formulations have already been created. Clicking the field takes you to the **File name** editing page.
Here you can now define an individual filename for each language code. On one hand, there is the option to formulate a static filename that will be used for each process in the same way.
On the other hand, it is possible to define the filename dynamically. By using placeholders - in the example defined by %1 and %2 - it then adapts to each process.

The definition of the placeholders is done on the same page in the tab **Placeholder Definition** below.

![](images/apps/custom-filename/en/app_report_selection_placeholder_setup.png)

#### Define placeholder
On the **"File name placeholder "** page there are two fields available:

**Placeholder** - Here you define how your placeholder should look like.
**Definition** - This field defines which field your previously entered placeholder refers to.

**Creating a new placeholder**
First, enter the desired placeholder in the **Placeholder** field. We recommend using placeholders here that could not accidentally appear in the subject, for example, if you define the placeholder **Rech** for the invoice number and the subject contains the word **Invoice**, the **Rech** part of the word would be replaced in the subject. It is best to use a combination of special characters and numbers or adjust placeholders so that they do not accidentally appear in words.

Now you have to define the field to which the placeholder refers. To do this, click on the Assist button of the Definition field. 
Now another window opens, in which all fields from the company data, as well as all fields from the header data of the underlying report are available to you. You can select a field assignment for each placeholder.



|![](images/apps/mail_subject_field_lookup.png)|
|-|


{{< notice info "Technical Note" >}}
To determine the table for the header data, the report metadata of the respective report is examined for its property: **FirstDataItemTableID**. The standard reports in Business Central store the underlying header for this respective first element (FirstDataItemTableId). Example: Report 1306 -> Sales Invoice Header. 
If customized reports have a different structure, i.e. a different table is in the first place, this will also be
this will also be taken over into the table filter, whereby possibly useless fields will be displayed, or important fields could be missed.
For such cases there is the possibility to set the correct target table via an event subscriber depending on the report id.
More about this can be found at [Events](/en-en/apps/mail-subject-plus/working-with-mail-subject-plus/events).
{{< /notice >}}

<br>

Repeat this process for all the fields/placeholders you want to use in your subject.

#### Example of a file name with placeholders
Now that you have defined your placeholders, you can add them to file names as you wish. Close the placeholder setup and click again in the **"Filename "** field. For our example, we have defined the following placeholders for an invoice.

- **%1** - the invoice number
- **%2** - The recipient name
- **%3** - The due date

With this we could now build for example, this file name: **Our Invoice ***%1*** for ***%2*** - Due: ***%3*****
How the subject then looks in use, you will learn in the next [step](en/apps/mail-subject-plus/working-with-mail-subject-plus/maildialogue/).


