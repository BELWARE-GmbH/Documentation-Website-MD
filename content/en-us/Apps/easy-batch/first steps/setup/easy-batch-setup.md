---
title: "Easy Batch Setup"
date: 2022-08-17T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
## Setup

### Easy Batch Setup

To navifate to the Easy Batch Setup simply open the search and enter **Connector 365 Setup**.
There you can find the tab **Easy Batch Setup**.

Generally all documents will be processed in background using Easy Batch.
But using the Easy Batch setup, you can control, which type of documents wil be processed at what specific time.

![](images/apps/Easy_Batch/en-us/app_setup.png)

First, in the **Processing Time Interval** field, you can specify a time interval globally for all documents, in which the documents are processed.
This is useful in scenarios where tables are locked during processing or communication with external services takes place.
This prevents tasks from blocking each other.

All posted document types which can be processed using the app are recorded in the Easy Batch Setup.

In the field **Processing Time** you can enter a fixed time when documents of this type shall be processed.
If you leave this field empty, all documents will be processed immediately.

Using the field **Automated Processing** you can define that all documents of this type shall be processed automatically after being posted.
Using this setting for unposted documents like sales orders, will enqueue those for automated processing at the set up time as soon as they are released.

#### An example for practical application:
You want to send posted sales invoices manually as a batch, so the check mark for automated processing is not set. In addition, if no time is entered in the processing time field, the posted sales invoices will be sent immediately after they are selected and batch sending is activated.
If, on the other hand, a time is entered in the processing time field, the invoices in batch shipping will first be moved to the ["Open Tasks"](en-us/apps/easy-batch/working-with-easy-batch/open-tasks/) list and will actually be sent at the selected time.

If you want to save yourself the manual selection of reports for dispatch, check the box for automated processing. Posted sales invoices, to stay with the example, are then processed as soon as they are created from a sales invoice or order by posting.
Again, if no processing time is set, reports will be sent immediately upon posting. If, on the other hand, a processing time is entered, the reports are first entered in the ["Open tasks"](en-us/apps/easy-batch/working-with-easy-batch/open-tasks/) list and are actually sent at the selected time.

Another important aspect for the function of the app is the setup of the [document layouts](en-us/apps/easy-batch/first-steps/setup/document-layouts/).