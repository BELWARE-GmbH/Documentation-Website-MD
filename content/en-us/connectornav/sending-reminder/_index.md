---
title: "Sending issued reminders"
date: 2023-08-28
description: 
draft: false
collapsible: true
weight: 10
---

# Sending issued reminders

## Automatic attachment of invoices when sending reminders

When you send reminders to your customers, you often find that they request a copy of the relevant invoices after receiving the reminder.
Connector NAV provides a function to automatically attach reminded invoices to the reminder email.
The following describes how to set up and execute the mentioned function of automatically attaching invoices to reminders.

## Setup

First, navigate to the Connector NAV setup. This can be found under **Departments -> Connector NAV**:
|![](images/connectornav/sending-reminder/en/setup.png)|
|-|

Then open the **Global** tab:
|![](images/connectornav/sending-reminder/en/setup-global.png)|
|-|

Locate and check the **Invoice as attachment when sending reminder** field:
|![](images/connectornav/sending-reminder/en/setup-enable-field.png)|
|-|

This completes the setup.

{{< notice warning Info >}}
Please make sure that a valid path for **Path (com_tmp)** is entered in the **Connector NAV Setup**:
<br>
![](images/connectornav/sending-reminder/en/com-temp.png)
**Path (com_tmp)** is used for for file storage of attached invoices. 
If no valid path is stored, errors may occur:
<br>
{{< /notice >}}

## Applying the function

Once you have completed the setup, you can easily send issued reminders using **Connector NAV**.
To do this, navigate to a **issued reminders** page, for example the **Issued Reminder Selection** of the **Connector 365 Templates**:

|![](images/connectornav/sending-reminder/en/template-reminders.png)|
|-|

Run the **Connector NAV** sending function:

|![](images/connectornav/sending-reminder/en/reminders-sending-button.png)|
|-|

As soon as the dialog (if enabled) is confirmed, all invoices mentioned in the reminder will be generated as a PDF file and attached to the process.

<br>

{{< notice info Info >}}
The scope of functions can individually deviate from the one shown here. For example, the **Connector NAV Templates** are only available after corresponding purchase. If no **Connector NAV Templates** have been purchased, the shipping actions are often inserted in the standard pages depending on the desired configuration. The scope of action buttons depends on the purchased modules.
{{< /notice >}}


## Logging

Any (shipping) operations of the **Connector NAV** are logged in the [**Joblist**](/en-us/connectornav/base/base_overview/).
Invoices that have been automatically attached to a reminder are also logged.
Via the **Show files** action of the **Joblist** page ...

|![](images/connectornav/sending-reminder/en/joblist-show-pdf.png)|
|-|

... you can view all the attachments assigned to the task:

|![](images/connectornav/sending-reminder/en/com-temp-attachments.png)|
|-|

## Notes on the invoice attachments

At the moment, no settings from the **Connector NAV user report setup** are taken into account for attachments that are automatically attached to reminders. This means that it is currently not possible to configure certain settings, such as the file name, for these attachments.