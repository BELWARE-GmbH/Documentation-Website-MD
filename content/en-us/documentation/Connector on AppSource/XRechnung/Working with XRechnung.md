---
title: "Working with XRechnung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 3
---
### Versand

![](images/XRechnung/XRechnungScreenshot3.PNG)

If the setup has been completed, you can easily send invoices by email. Open your posted sales invoices and select the invoice you want to send.
 
**„Print/Send“ -> „Send as XRechnung“**

A new dialog opens where you can make adjustments before sending.

![](images/XRechnung/XRechnungScreenshot4.PNG)

In the dialog, the sender, the recipient, the subject and also again the Ident ID can be viewed but also adjusted.
The content of the mail can be customized and the current attachments are visible.
If you have other attachments that you want to send, then you can add more attachments via the **"Attach file"** field in the menu bar.

**Note:** _If you have selected embedded attachments in the document layouts, these will also be embedded in the XML and can then only be read by machine. You have to pay attention to which attachments the recipient accepts._

If you have made the desired changes, you can trigger the dispatch via **"Send Email"**. In the background, a check for the scheme of the XRechnung is now performed.

#### Negative XRechnungen

In case an XRechnung does not correspond to the required scheme, an error message will be displayed, if confirmed, the XRechnung validation report will be opened.

![](images/XRechnung/xrechnungbericht.png)

There you can see which points do not match the required scheme. Correct these points and send the XRechnung again.

There are many places that cause an XInvoice to not conform to the schema. For the most common ones we have a list and guidance at [First Steps](en-us/documentation/connector-on-appsource/xrechnung/first-steps)

#### After sending

If the verification of the document was successful, the invoice will be sent.

After sending, the recipient will receive, among other things, a **"xml-file"**. 
This is the corresponding invoice in **"XRechnung"** format.

![](images/XRechnung/XRechnungScreenshot5.PNG)

### State
In your role center you can find two new boxes. There you can track the status of sent and faulty XRechnung.

![](images/XRechnung/xrechnungstatus.png)

#### XRechnung

![](images/XRechnung/xrechnunguebersicht.png)

All successfully sent XRechnung are displayed here - what was sent when, to whom.
You also have the possibility to resend already sent XRechnung.

#### XRechnung Draft

![](images/XRechnung/xrechnungentwuerfe.png)

Here XRechnung are displayed, which failed the check and are not accepted as XRechnung. This can have different reasons - you can find out exactly which ones by opening the validation report. 
