---
title: "Report default attachments"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 2
---
### Setup

### Adding default attachments per report

![](images/apps/attachmentreportselection.png)

Default attachments are a great way to save time when adding files to your emails. If you use the same attachment in every email, just add it as a default and it will be automatically attached to every email.

Start by opening the report selection of the report you want, in this example we will use Sales and Invoices. If you are not sure where to find the report selector, you can always use the Dynamics 365 Business Central search feature.

As you can see in the screenshot above, there is also a new Attachments field in this window. The process of adding new default attachments works like adding attachments to your regular mail. Start by clicking on the 0 to open the attachment dialog and add your files via "New" and "Add attachment".

***Setting attachments per language code***

|![](images/apps/mail-attachments-plus/de/reportselection_languagecode.png)
|-|

The first step is to define the language code for which attachments are to be added. To do this, select the relevant language code and click on 0 under Attachment No. to define the attachments for this language.
<p></p>

A new window will open:

|![](images/apps/mail-attachments-plus/de/reportselection_attachment_per_languagecode.png)
|-|

By clicking in the **Attachment Name** field, a new attachment can be added. The table containing your attachments for our Connector 365 apps will open. There are no files here the first time you use it. Add these using the three dots via **New** and then **Add Attachment**.

|![](images/apps/mail-attachments-plus/de/attach.png)
|-|

After adding the file(s), it is possible to use the "From Date" and "To Date" fields to define whether a default attachment should only be attached for a certain period of time. This can be used, for example, to add an advertisement to your mails that is only valid for a certain period of time. If you are unable to edit the date fields, first click on "Edit List" in the menu and then set the date.

Here it is also an option to set whether your attachment should always be embedded in the XRechnung XML when used with our Connector 365 XRechnung.

|![](images/apps/mail-attachments-plus/de/xml_einbetten.png)
|-|

{{< notice info "Note" >}}
 _The date set for the system does not use the system date to determine the day, but the working date of your Business Central environment._
{{< /notice >}}

### Attach Document Attachments and Document Line Attachments per Report

|![](images/apps/mail-attachments-plus/de/reportselection_new_DEU.png)
|-|

In addition to the field for adding standard attachments, you have two other fields with which you can contrl whether your document attachments should be attached by default for the selected report.

{{< notice info "Note" >}}
_The "Attach Document Attachments" and "Attach Document Line Attachments" checkboxes marked in the screenshot aove are not used to control the attachments uploaded under attachments. They are used to control whether attachments on the individual document or in the document line should also be added automatically._
{{< /notice >}}
####

Once the attachments are set, a mail can be sent as usual, instructions on how to do this can be found in **"Working with Mail Attachment Plus"** under [Report Default Attachments](en-us/apps/mail-attachments-plus/working-with-map/defaults-report/)