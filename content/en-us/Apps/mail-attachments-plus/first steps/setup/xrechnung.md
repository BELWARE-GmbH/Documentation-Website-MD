---
title: "Special features when using Connector 365 XRechnung"
date: 2020-02-28T10:08:56+09:00
description: 
draft: false
collapsible: false
weight: 4
---

### Special features when using Connector 365 XRechnung

If you have installed the **Connector 365 XInvoice** app, an additional field is available when adding attachments,
which directly affects the way the **Connector 365 XInvoice** app works.
This is because the latter is compatible with the **Connector 365 Mail Attachments Plus** app. This means that attachments set up for customers, reports or receipts are also taken into account when sending XRechnung using the **Connector 365 XInvoice** app. A special feature of XRechnung shipping is that attachments can either be sent by mail as an additional attachment or embedded directly in an XRechnung XML file (read more [here](en-us/apps/xrechnung)).
The following explains how to set up the special handling of attachments for XRechnung within **Connector 365 Mail Attachments Plus** per attachment.

#### Set up an attachment

Make sure that the [**Connector 365 XInvoice**](en-us/apps/xrechnung) app is installed.
Follow the steps for setting up default attachments for [customers](en-us/apps/mail-attachments-plus/first-steps/setup/defaults-customer), [documents](en-us/apps/mail-attachments-plus/first-steps/setup/defaults-document), or [reports](en-us/apps/mail-attachments-plus/first-steps/setup/defaults-report).
When opening the attachment list, where you can add new attachments, a **Embed in XRechnung xml** field should be visible:

|![](images/apps/mail-attachments-plus/us/xr_do_not_embed.png)|
|-|

Now add any attachment. By default, the **Embed in xml XRechnung xml** field is unchecked, which means that for XRechnung, attachments are embedded by default.
However, if you want to set up that the newly created attachment for XRechnung will be sent only as an additional attachment, put a check mark in the field.

|![](images/apps/mail-attachments-plus/us/xr_set_do_not_embed.png)|
|-|

For more information on the subject of attachments in XRechnung, see [here](en-us/apps/xrechnung/working-with-xrechnung/attachments/).