---
title: "Document default attachments"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---
### Setup

The following describes how to add document attachments, i.e. the document attachments from a specific document as an attachment, or how to add document line attachments, i.e. the document attachments from the document lines.

### Add Document Attachments per Document

Using the fact box, each document can have document attachments that are automatically attached when the document is sent. To do this, select the desired document in the overview and select **"Attachments"** in the fact box on the right.

|![](images/apps/attachmentoverattachde.PNG)
|-|

Now click on the 0 under "Documents", a window will open in which attachments can be added via **"Attach File(s)"** in the table.

|![](images/apps/mail-attachments-plus/de/attachmentdoc_DEU.png)
|-|

Select the desired file and repeat this process until all the desired files have been attached. From now on, the selected files can always be sent wwhen you send the selected document. To actually use this option, the **"Use Document Attachments"** box must be checked in the appropriate report selection or documentlayouts of the respective customer.
Please note that the setting in the documentlayouts overwrites the setting in the report selection.

|![](images/apps/mail-attachments-plus/de/compare_reportselection.png)
|-|

|![](images/apps/mail-attachments-plus/de/compare_documentlayouts.png)
|-|

If overwriting is to be prevented, i.e. the general default attachments are to be attached in addition to the customer-specific attachments, this can be achieved by ticking the "Atttach Default Attachments" box.

As soon as the attachments have been set, an email can be sent as usual. You can find instructions on how to do this in the **"Working with Mail Attachments Plus"** under [Document Default Attachments](en-us/apps/mail-attachments-plus/working-with-map/defaults-document/)

### Adding Document Line Attachments per Document

Via the fact box, you have the option of selecting whether document line attachments are automatically attached when a document is sent.

{{< notice info "Document Line Attachments" >}}
 _This refers to documents that you add via the document line. This includes, for example, attachments that you attach to item cards and then drag into the document line using a document_
{{< /notice >}}
<p></p>

To add these to a sales offer, for example, proceed as follows:

Activate in the corresponding report selection, here: sales offer, that the document line attachments are attached by default.

|![](images/apps/mail-attachments-plus/de/reportselection_belegzeilenanhänge.png)
|-|

You must also activate this setting in the documentlayouts of the customer:

|![](images/apps/mail-attachments-plus/de/documentlayouts_belegzeilenanhänge.png)
|-|

You can now check whether a document line attachment exists in the document. To do this, go to the document and click on *Line* under **Lines**, below which you will now find the sub-item *Attachments*.

|![](images/apps/mail-attachments-plus/de/beispiel_belegzeilenanhänge.png)
|-|

Clicking on this will open a new window, which will now show you that an attachment is linked in the example shown above for the item.

|![](images/apps/mail-attachments-plus/de/belegzeilenanhang.png)
|-|

At this point, you can also add further attachments to the corresponding document line or remove existing documents if neccessary.

The document attached here is stored on the item card under attachments.

|![](images/apps/mail-attachments-plus/de/artikelkarte_anhang.png)
|-|

As soon as the attachments have been set, an email can be sent as usual. Instructions can be found in the **"Working with Mail Attachments Plus"** section under [Document Default Attachments](en-us/apps/mail-attachments-plus/working-with-map/defaults-document/)