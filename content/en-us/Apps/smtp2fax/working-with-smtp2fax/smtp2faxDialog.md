---
title: "SMTP2FAX Dialog"
date: 2020-02-28T00:00:00+09:00
description: 
draft: false
collapsible: false
weight: 5
---
### The SMTP2FAX Dialog
If for a report the delivery as a fax via SMTP was activated, a mail dialog adapted for the fax application appears for further processing. 

![](images/apps/smtp2fax/en/SMTP2FAX_dialog.png)

Here the recipient address can be changed and the attachment can be checked for correctness. Then the report can be sent or discarded via the respective button in the upper menu. If the dialog is closed via the X or the close button, it is still possible to select whether the message is to be saved as a draft in the [mail outbox](en-us/apps/smtp2fax/working-with-smtp2fax/emailoutbox/) or discarded. 

If you choose to send the message, an entry is made in the [Connector 365 activity list](en-us/apps/smtp2fax/working-with-smtp2fax/archive/). In addition to other information about the transmission, a status marker can be used to check whether the transmission was successful or failed. 
If, on the other hand, sending is canceled, no entry is made in the activity list, even if the message was saved as a draft. 