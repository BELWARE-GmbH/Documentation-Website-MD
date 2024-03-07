---
title: "Customer default attachments"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---
### Setup

### Standard attachments per customer and report.

Another way to add attachments is to add them as defaults for customers, for example, if there are conditions that only apply to a specific customer. Open the customer you want to add defaults to and expand the options in the menu via "More options", click "Navigate" and select "Document layouts".

![](images/apps/attachmentnavigation.png)

If preferences have already been set in the report selection, it is possible to automatically attach them when setting up attachments per customer - simply click the **"Copy from Report Selection"**. 

If you want to set up your own attachments, select the report for which you want to add default attachments; in this example we will use invoices. As before, you will notice the new attachments field. Open the attachments dialog box by clicking on the zero.

|![](images/apps/mail-attachments-plus/de/attachmentdocumentlayouts.png)
|-|

The rest of the process works the same as adding standard attachments to reports without customizing them. The same options can be used as before, including the date range and the XML embedding option. After adding your defaults, close the attachment dialog box.

{{< notice info "Note" >}}
 _Please note that standard attachments that are defined at customer level overwrite the standards set in the report selection. If this is not desired, a checkmark can be placed in the "Attach Default" field. This means that the standard attachments and the customer-specific attachments are added._
{{< /notice >}}
{{< notice info "Note" >}}
_The checkbox marked in the screenshot above with "Attach Document Attachments" and "Attach Document Line Attachments" is not used to control the attachments uploaded under Attachments. It is used to control whether attachments on the individual document or in the document line should also be added._
{{< /notice >}}
####
As soon as the attachments have been set up, an email can be sent as usual. You can find instructions on how to do this in **"Working with Mail Attachments Plus"** under [Customer Default Attachments](en-us/apps/mail-attachments-plus/working-with-map/defaults-customer/)