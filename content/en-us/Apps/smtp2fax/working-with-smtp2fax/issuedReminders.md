---
title: "Issued Reminders"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 3
---
### SMTP2FAX in Issued Reminders

On the issued reminders page, the function can be found in different menus depending on the Business Central version, e.g. in the "Home" menu as shown in the screenshot. 

![](images/apps/smtp2fax/en/SMTP2FAX_issReminders.png)

The fax number used is selected according to the following logic: 
First, the document layouts of the customer specified as the recipient are searched for a fax number entered for use with reminders.
If none is found there, the fax number entered in the card of the dunning recipient is used. 

Also on the page of a single issued reminder, depending on the Business Central version, the function can be found in a different menu, shown in the screenshot is the "Home" menu. 

![](images/apps/smtp2fax/en/SMTP2FAX_issReminder.png)

The logic for selecting the recipient's fax number is also the same as described above. 

After pressing the SMTP2FAX button, the report is created and a [dialog window](en-us/apps/smtp2fax/working-with-smtp2fax/smtp2faxdialog/) opens for further editing. 