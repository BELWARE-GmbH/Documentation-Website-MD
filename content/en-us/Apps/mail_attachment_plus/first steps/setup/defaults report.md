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

**Festlegen eines Anhangs auf einen bestimmten Zeitraum**

![](images/apps/attachmentdates.png)

After adding the file(s), you may have noticed the "From Date" and "To Date" fields. These two fields allow you to set a default attachment for a specific time period only. This can be used, for example, to add an advertisement to your mails that is only valid for a certain period of time. Before setting the date, you must first click on "Edit list" in the menu, otherwise the date fields cannot be edited

{{< notice info "Hinweis" >}}
 _The date set for the installation does not use the system date to determine the day, but the working date of your Business Central environment._
{{< /notice >}}
#

This completes adding default settings for your attachments, close the window and you are done. The next time you send an email with the report set up, in this case invoices, you will notice that the attachments will show the file you attached earlier.

If a particular default attachment does not match your current email, you can simply delete it in the dialog, this will delete the attachment only for that operation and not as default.