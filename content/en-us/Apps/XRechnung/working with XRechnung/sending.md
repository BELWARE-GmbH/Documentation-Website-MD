---
title: "Sending"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 1
---
### Working with XRechnung

### Sending

If the setup has been completed, then you can easily send invoices by email. Simply open your posted sales invoices and select the invoice you want to send.

|![](images/XRechnung/XRechnungScreenshot3_en.png)|
|-|
 
**„Print/Send“ -> „Send as XRechnung“**

The standard e-mail window will then open with minor adjustments for XRechnung sending.

|![](images/XRechnung/XRechnungScreenshot4_en.png)|
|-|

In the dialog, the sender, the recipient, the subject and the customer reference can be viewed and adjusted.
The content of the mail and other attachments can also be viewed and modified.

You can find more on the topic of attachments [here](en-us/apps/xrechnung/working-with-xrechnung/attachments).


When you have made the desired changes, you can trigger the dispatch via **send email**.
This will generate an XML file and validate it for correct syntax depending on [setup](/en-us/apps/xrechnung/first-steps/setup/base-setup/) before it is then sent via the conventional email route.
If XRechnung validation is enabled and an XML file generated during XRechnung sending has been validated incorrectly,
the mail dispatch will be aborted. You will also receive a validation report in which the reasons for rejecting the corresponding XRechnung are logged. More information about the **validation report** can be found [here](/en-us/apps/xrechnung/working-with-xrechnung/negative-xrechnung/).
### After sending

If the verification of the document was successful, the invoice will be sent.

After sending, the recipient will receive, among other things, a **“xml-file”**.
This is the corresponding invoice in **“XRechnung”** format.

|![](images/XRechnung/xrechnungemail.png)|
|-|
